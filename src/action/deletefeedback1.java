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
public class deletefeedback1 extends ActionSupport{
	DBOperate db=new DBOperate();
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	HttpSession session=request.getSession();
	ArrayList<FeedBack> flist=new ArrayList<FeedBack>();
	String id=request.getParameter("id");
	
	public String execute() {
		
		
		try {
			Connection conn=db.getDBConnect();
			String sql="delete from feedback1 where fid=?";
			PreparedStatement pre=conn.prepareStatement(sql);
			pre.setInt(1, Integer.parseInt(id));
			int row=pre.executeUpdate();
			if(row>0) {
				String sql2="SELECT * FROM feedback1";
				PreparedStatement pre2=conn.prepareStatement(sql2);
				ResultSet rs=pre2.executeQuery();
				while(rs.next()) {
					FeedBack fb=new FeedBack();
					fb.setFid(Integer.parseInt(rs.getString("fid")));
					fb.setUsername(rs.getString("username"));
					fb.setEmail(rs.getString("email"));
					fb.setCourse(rs.getString("course"));
					fb.setFeedback(rs.getString("feedback"));
		            flist.add(fb);
				}
				
			}
			else {
				String sql2="delete from feedback2 where fid=?";
				PreparedStatement pre2=conn.prepareStatement(sql2);
				pre2.setInt(1, Integer.parseInt(id));
				int row2=pre2.executeUpdate();
				if(row2>0) {
					String sql3="SELECT * FROM feedback2";
					PreparedStatement pre3=conn.prepareStatement(sql3);
					ResultSet rs2=pre3.executeQuery();
					while(rs2.next()) {
						FeedBack fb=new FeedBack();
						fb.setFid(Integer.parseInt(rs2.getString("fid")));
						fb.setUsername(rs2.getString("username"));
						fb.setEmail(rs2.getString("email"));
						fb.setCourse(rs2.getString("course"));
						fb.setFeedback(rs2.getString("feedback"));
			            flist.add(fb);
					}
				
			}
			}
				session.setAttribute("flist", flist);
				session.setMaxInactiveInterval(60*60);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
}
