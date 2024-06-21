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
public class adminviewschedule extends ActionSupport {
		DBOperate db=new DBOperate();
		ArrayList<Schedule> slist=new ArrayList<Schedule>();
		ArrayList<Schedule> clist=new ArrayList<Schedule>();
		
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();

		
		public String execute() {
			
			try {
				Connection conn=db.getDBConnect();
				String sql="SELECT * FROM schedule";
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
				session.setAttribute("schedulelist", slist);
				session.setMaxInactiveInterval(60*60*24);

			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
			return SUCCESS;
		}
}
