package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;
import service.UserProfile;

@SuppressWarnings("serial")
public class deleteuser extends ActionSupport {
	DBOperate db=new DBOperate();
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();
	ArrayList<UserProfile> plist=new ArrayList<UserProfile>();
	
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	
	public String execute() {
		
		try {
			Connection conn=db.getDBConnect();
			String sql="delete from register where id=? and username=?";
			PreparedStatement pre=conn.prepareStatement(sql);
			pre.setInt(1, Integer.parseInt(id));
			pre.setString(2, name);
			int row=pre.executeUpdate();
			if(row>0) {
				String sql2="SELECT * FROM register";
				PreparedStatement pre2=conn.prepareStatement(sql2);
				ResultSet rs=pre2.executeQuery();
				while(rs.next()) {
					UserProfile up=new UserProfile();
					up.setId(rs.getInt("id"));
					up.setUsername(rs.getString("username"));
		            up.setPassword(rs.getString("password"));
		            up.setDob(rs.getString("dob"));
		            up.setGender(rs.getString("gender"));
		            up.setEmail(rs.getString("email"));
		            up.setPhone(rs.getString("telephone"));
		            up.setCountry(rs.getString("country"));
		            up.setZip(rs.getString("zip"));
		            plist.add(up);
				}
				session.setAttribute("plist", plist);
				session.setMaxInactiveInterval(60*60);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
