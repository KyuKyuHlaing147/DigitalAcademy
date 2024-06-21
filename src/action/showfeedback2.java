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
import service.FeedBack;

@SuppressWarnings("serial")
public class showfeedback2 extends ActionSupport{


	DBOperate db=new DBOperate();
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	String ccou=request.getParameter("course");

	public String execute() throws ClassNotFoundException, SQLException {
		ArrayList<FeedBack> feb=new ArrayList<FeedBack>();
		ArrayList<FeedBack> feb2=new ArrayList<FeedBack>();
		
		Connection conn=db.getDBConnect();
		
		
		String sql="select * from feedback1 where course=?";
		PreparedStatement pre=conn.prepareStatement(sql);
		pre.setString(1, ccou);
		ResultSet rs=pre.executeQuery();
		while(rs.next()) {
			FeedBack fb=new FeedBack();
			fb.setFid(rs.getInt(1));
			fb.setUsername(rs.getString(2));
			fb.setEmail(rs.getString(3));
			fb.setCourse(rs.getString(4));
			fb.setFeedback(rs.getString(5));
			feb.add(fb);
		}
		session.setAttribute("flist1", feb);
		
		String sql2="select * from feedback2 where course=?";
		PreparedStatement pre2=conn.prepareStatement(sql2);
		pre2.setString(1, ccou);
		
		ResultSet rs2=pre2.executeQuery();
		while(rs2.next()) {
			FeedBack fb=new FeedBack();
			fb.setFid(rs2.getInt(1));
			fb.setUsername(rs2.getString(2));
			fb.setEmail(rs2.getString(3));
			fb.setCourse(rs2.getString(4));
			fb.setFeedback(rs2.getString(5));
			feb2.add(fb);
		}
		
		session.setAttribute("flist2", feb2);
		session.setAttribute("coursename", ccou);	
		return SUCCESS;
	}
	
}
