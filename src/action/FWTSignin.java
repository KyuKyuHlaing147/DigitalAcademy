package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;

@SuppressWarnings("serial")
public class FWTSignin extends ActionSupport{
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
    public String execute() {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        

        try {
            Connection conn = db.getDBConnect();
          
                String sqlUser = "SELECT * FROM register WHERE email=? AND password=?";
                PreparedStatement preUser = conn.prepareStatement(sqlUser);
                preUser.setString(1, email);
                preUser.setString(2, password);
                ResultSet rsUser = preUser.executeQuery();

                if (rsUser.next()) {
                	String name=rsUser.getString("username");
                    session.setAttribute("username", name);
                    return "userSuccess"; 
                } else {
                    addActionError("Invalid email or password");
                    return ERROR;
                }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
