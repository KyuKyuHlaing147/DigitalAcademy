package action;
import service.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings("serial")
public class FeedBackAction2 extends ActionSupport{
	String username;
	String email;
	String course;
	String feedback;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
DBOperate db=new DBOperate();
HttpServletRequest request=ServletActionContext.getRequest();
HttpSession session=request.getSession();
String course1=request.getParameter("course");


ArrayList<FeedBack> feb2=new ArrayList<FeedBack>();

public String execute() throws Exception{
	String sql="insert into feedback2(username,email,course,feedback) values (?,?,?,?)";
	
	PreparedStatement pre=db.getDBConnect().prepareStatement(sql);
	pre.setString(1,username);
	pre.setString(2, email);
	pre.setString(3, course);
	pre.setString(4, feedback);
	pre.executeUpdate();
	return SUCCESS;
		
}

public String showFeedback2() throws Exception{
	
	Statement st=db.getDBConnect().createStatement();
	String sql="select * from feedback2 where course='"+course1+"'";
	ResultSet rs=st.executeQuery(sql);
	if(rs!=null) {
	while(rs.next()) {
		FeedBack fb=new FeedBack();
		fb.setFid(rs.getInt(1));
		fb.setUsername(rs.getString(2));
		fb.setEmail(rs.getString(3));
		fb.setCourse(rs.getString(4));
		fb.setFeedback(rs.getString(5));
		feb2.add(fb);
	}
	session.setAttribute("flist2", feb2);
	session.setMaxInactiveInterval(60*60);
	}
	
	return SUCCESS;
	
}

	
}
