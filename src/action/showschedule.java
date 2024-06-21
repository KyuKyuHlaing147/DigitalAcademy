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
import service.Schedule;

@SuppressWarnings("serial")
public class showschedule extends ActionSupport {
		DBOperate db=new DBOperate();
		ArrayList<Schedule> slist=new ArrayList<Schedule>();
		ArrayList<Schedule> clist=new ArrayList<Schedule>();
		ArrayList<Schedule> jlist=new ArrayList<Schedule>();
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();
		HttpSession session2=request.getSession();
		
		public String execute() {
			
			try {
				Connection conn=db.getDBConnect();
				String sql="SELECT * FROM schedule WHERE name LIKE '%CPP%'";
				PreparedStatement pre=conn.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				while(rs.next()) {
					Schedule sh=new Schedule();
					sh.setName(rs.getString("name"));
					sh.setStart_date(rs.getString("start_date"));
					sh.setEnd_date(rs.getString("end_date"));
					sh.setHour(rs.getString("hour"));
					sh.setTimezone(rs.getString("timezone"));
					sh.setLink(rs.getString("link"));
					sh.setPpt(rs.getString("ppt"));
					sh.setTname(rs.getString("teacher"));
					slist.add(sh);
				}
				session.setAttribute("C++list", slist);
				session.setMaxInactiveInterval(60*60);
				
				String sql2="SELECT * FROM schedule WHERE name LIKE '%FrontendWebTech%'";
				PreparedStatement pre2=conn.prepareStatement(sql2);
				ResultSet rs2=pre2.executeQuery();
				while(rs2.next()) {
					Schedule sh=new Schedule();
					sh.setName(rs2.getString("name"));
					sh.setStart_date(rs2.getString("start_date"));
					sh.setEnd_date(rs2.getString("end_date"));
					sh.setHour(rs2.getString("hour"));
					sh.setTimezone(rs2.getString("timezone"));
					sh.setLink(rs2.getString("link"));
					sh.setPpt(rs2.getString("ppt"));
					sh.setTname(rs2.getString("teacher"));
					clist.add(sh);
				}
				session2.setAttribute("Fwtlist", clist);
				session2.setMaxInactiveInterval(60*60);
				
				
				String sql3="SELECT * FROM schedule WHERE name LIKE '%Database%'";
				PreparedStatement pre3=conn.prepareStatement(sql3);
				ResultSet rs3=pre3.executeQuery();
				while(rs3.next()) {
					Schedule sh=new Schedule();
					sh.setName(rs3.getString("name"));
					sh.setStart_date(rs3.getString("start_date"));
					sh.setEnd_date(rs3.getString("end_date"));
					sh.setHour(rs3.getString("hour"));
					sh.setTimezone(rs3.getString("timezone"));
					sh.setLink(rs3.getString("link"));
					sh.setPpt(rs3.getString("ppt"));
					sh.setTname(rs3.getString("teacher"));
					jlist.add(sh);
				}
				session2.setAttribute("Dblist", jlist);
				session2.setMaxInactiveInterval(60*60);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			return SUCCESS;
		}
}
