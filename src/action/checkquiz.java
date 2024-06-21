package action;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.DBOperate;
import service.Quiz;
import service.UserProfile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

@SuppressWarnings("serial")
public class checkquiz extends ActionSupport {

    private ArrayList<Quiz> qlist;
    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    HttpServletRequest request = ServletActionContext.getRequest();


    @SuppressWarnings("unchecked")
    public String execute() {
        request = ServletActionContext.getRequest();
        qlist = (ArrayList<Quiz>) ServletActionContext.getRequest().getSession().getAttribute("quizlist");

        if (qlist != null && !qlist.isEmpty()) {
            Map<String, String[]> parameters = request.getParameterMap();
            int score = 0;

            for (int i = 0; i < qlist.size(); i++) {
                String[] userAnswers = parameters.get("userAnswers[" + i + "]");
                
                if (userAnswers != null && userAnswers.length > 0) {
                    String userAnswer = userAnswers[0]; 
                    Quiz quiz = qlist.get(i);

                    String correctAnswer = String.valueOf(quiz.getCoption());
                    if (userAnswer != null && userAnswer.equals(correctAnswer)) {
                        score++;
                    }
                }
            }
            
            if(score>5) {
            	
            	String uname = (String) session.getAttribute("username");
                ArrayList<UserProfile> ulist = new ArrayList<UserProfile>();
                Connection conn = null;
                try {
                    conn = db.getDBConnect();
                    String sql = "SELECT * FROM register WHERE username=?";
                    PreparedStatement preparedStatement = conn.prepareStatement(sql);
                    preparedStatement.setString(1, uname);
                    ResultSet resultSet = preparedStatement.executeQuery();

                    if (resultSet.next()) {
                        UserProfile up = new UserProfile();

                        up.setUsername(resultSet.getString("username"));
                        up.setPassword(resultSet.getString("password"));
                        up.setDob(resultSet.getString("dob"));
                        up.setGender(resultSet.getString("gender"));
                        up.setEmail(resultSet.getString("email"));
                        up.setPhone(resultSet.getString("telephone"));
                        up.setCountry(resultSet.getString("country"));
                        up.setZip(resultSet.getString("zip"));

                        byte[] pictureData = resultSet.getBytes("profile_picture");
                        up.setProfilePicture(pictureData);

                        ulist.add(up);
                        session.setAttribute("userprofile", ulist);
                        session.setMaxInactiveInterval(60*60*24);
                    }

                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                } 
            	
            	 request.getSession().setAttribute("quizScore", String.valueOf(score));
            	return "usersuccess";
            }
            else {
            	 request.getSession().setAttribute("quizScore", String.valueOf(score));
            	return SUCCESS;
            }                      
        }
        return ERROR;

    }
}
