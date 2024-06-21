package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;
import service.Quiz;

@SuppressWarnings("serial")
public class deletequiz extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();
    private HttpSession session = request.getSession();
    
    String coption;
	String question,option1,option2,option3,option4,level,ctype;
	public String getCoption() {
		return coption;
	}
	public void setCoption(String coption) {
		this.coption = coption;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	
	
	public String execute() {
	    ArrayList<Quiz> qlist = new ArrayList<>();
	    String id = request.getParameter("id");
	    if (id != null && !id.isEmpty()) {
	        try {
	            Connection conn = db.getDBConnect();
	            String sql = "delete from Korea_Quiz where id=?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setInt(1, Integer.parseInt(id));
	            int row = ps.executeUpdate();
	            if (row > 0) {
	                // Fetch the updated list of quizzes from the database
	                String name = request.getParameter("btn");
	                PreparedStatement pre = conn.prepareStatement("SELECT * FROM Korea_Quiz where ctype=?");
	                pre.setString(1, name);
	                ResultSet rs = pre.executeQuery();

	                while (rs.next()) {
	                    Quiz qz = new Quiz();
	                    qz.setId(rs.getInt("id"));
	                    qz.setQuestion(rs.getString("question"));
	                    qz.setOption1(rs.getString("option1"));
	                    qz.setOption2(rs.getString("option2"));
	                    qz.setOption3(rs.getString("option3"));
	                    qz.setOption4(rs.getString("option4"));
	                    qz.setCoption(rs.getInt("correct_option"));
	                    qz.setLevel(rs.getString("level"));
	                    qz.setCtype(rs.getString("ctype"));
	                    qlist.add(qz);
	                }

	                // Update the session attribute with the updated list of quizzes
	                session.setAttribute("quizlist", qlist);
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            return ERROR;
	        }
	    }
	    return SUCCESS;
	}

}
