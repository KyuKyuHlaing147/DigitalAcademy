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
public class ShowQuizAction extends ActionSupport {
    DBOperate db = new DBOperate();
    HttpSession session = ServletActionContext.getRequest().getSession();
    HttpServletRequest request=ServletActionContext.getRequest();
    
    public String execute() {
        ArrayList<Quiz> qlist = new ArrayList<>();
        String name = request.getParameter("btn");

        try {
            Connection conn = db.getDBConnect();
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

            session.setAttribute("quizlist", qlist);
            
          
            rs.close();
            pre.close();
            conn.close();

            return SUCCESS;

        } catch (SQLException | ClassNotFoundException e) {
           
            e.printStackTrace(); 
            return ERROR;
        }
    }

}
