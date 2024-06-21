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
public class adminlogin extends ActionSupport {
    DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();

    public String execute() {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection conn = db.getDBConnect();
            String sqlAdmin = "SELECT * FROM Admin WHERE email=? AND password=?";
            PreparedStatement preAdmin = conn.prepareStatement(sqlAdmin);
            preAdmin.setString(1, email);
            preAdmin.setString(2, password);
            ResultSet rsAdmin = preAdmin.executeQuery();

            if (rsAdmin.next()) {
            	String aname=rsAdmin.getString("name");
                session.setAttribute("adminName", aname);
                session.setAttribute("adminpassword", password);
                session.setAttribute("adminemail", rsAdmin.getString("email"));
                return SUCCESS;
            } 
            
            else {
                String sqlUser = "SELECT * FROM register WHERE email=? AND password=?";
                PreparedStatement preUser = conn.prepareStatement(sqlUser);
                preUser.setString(1, email);
                preUser.setString(2, password);
                ResultSet rsUser = preUser.executeQuery();

                if (rsUser.next()) {
                	 String uname = rsUser.getString("username");
                	 String euser=rsUser.getString("email");
                    session.setAttribute("username", uname);
                    session.setAttribute("usermail", euser);
                    session.setMaxInactiveInterval(60*60*24);
                    return "userSuccess"; 
                } else {
                    addActionError("Invalid email or password");
                    return ERROR;
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
