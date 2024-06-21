package action;


import java.io.IOException;
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
import service.UserProfile;

@SuppressWarnings("serial")
public class Updateuserinfo extends ActionSupport{
	public String execute() throws IOException {
		HttpServletRequest request=ServletActionContext.getRequest();
		
		HttpSession session=request.getSession();
		ArrayList<UserProfile> ulist = new ArrayList<UserProfile>();
		
        DBOperate db = new DBOperate();
        try {
            Connection conn = db.getDBConnect();
            
            String uname=request.getParameter("uname");
            String email=request.getParameter("email");
            String sql = "select * from register where username=? and email=?";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, uname);
            preparedStatement.setString(2, email);
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
                session.setAttribute("updateprofile", ulist);
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return ERROR;
        }
        return SUCCESS;
    }
}
