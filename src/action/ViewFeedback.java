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
import service.FeedBack;


@SuppressWarnings("serial")
public class ViewFeedback extends ActionSupport{
	
	DBOperate db=new DBOperate();
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();
	ArrayList<FeedBack> flist=new ArrayList<FeedBack>();
	
	int fid;
	String name,email,subject,message;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
public String execute() {
		
		try {
			Connection conn=db.getDBConnect();
			String sql="SELECT * FROM feedback1";
			PreparedStatement pre=conn.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
			while(rs.next()) {
				FeedBack fb=new FeedBack();
				fb.setFid(Integer.parseInt(rs.getString("fid")));
				fb.setUsername(rs.getString("username"));
				fb.setEmail(rs.getString("email"));
				fb.setCourse(rs.getString("course"));
				fb.setFeedback(rs.getString("feedback"));
	            flist.add(fb);
			}
			
			rs.close();
			
			String sql2="SELECT * FROM feedback2";
			PreparedStatement pre2=conn.prepareStatement(sql2);
			ResultSet rs2=pre2.executeQuery();
			while(rs2.next()) {
				FeedBack fb=new FeedBack();
				fb.setFid(Integer.parseInt(rs2.getString("fid")));
				fb.setUsername(rs2.getString("username"));
				fb.setEmail(rs2.getString("email"));
				fb.setCourse(rs2.getString("course"));
				fb.setFeedback(rs2.getString("feedback"));
	            flist.add(fb);
			}
			session.setAttribute("flist", flist);
			session.setMaxInactiveInterval(60*60);
			
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
}
