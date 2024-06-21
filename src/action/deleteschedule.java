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
import service.Schedule;

@SuppressWarnings("serial")
public class deleteschedule extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();

    private HttpSession session = request.getSession();
    
    private String name;
    private String day;
    private String hour;
    private String time;
    private String link;
    private String tname;
    
   
    
    public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDay() {
		return day;
	}



	public void setDay(String day) {
		this.day = day;
	}



	public String getHour() {
		return hour;
	}



	public void setHour(String hour) {
		this.hour = hour;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public String getLink() {
		return link;
	}



	public void setLink(String link) {
		this.link = link;
	}



	public String getTname() {
		return tname;
	}



	public void setTname(String tname) {
		this.tname = tname;
	}



	public String execute() {
    	ArrayList<Schedule> clist = new ArrayList<>();
        String sname=request.getParameter("name");
        if (sname != null && !sname.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "delete from schedule where name=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, sname);
                int row = ps.executeUpdate();
                if (row > 0) {
                
                	PreparedStatement pre = conn.prepareStatement("SELECT * FROM schedule");
                   
                    ResultSet rs = pre.executeQuery();

                    while (rs.next()) {
                        Schedule sh=new Schedule();
                        sh.setName(rs.getString("name"));
    					sh.setStart_date(rs.getString("start_date"));
    					sh.setEnd_date(rs.getString("end_date"));
    					sh.setHour(rs.getString("hour"));
    					sh.setTimezone(rs.getString("timezone"));
    					sh.setLink(rs.getString("link"));
    					sh.setPpt(rs.getString("ppt"));
    					sh.setTname(rs.getString("teacher"));
                        clist.add(sh);
                    }
                    session.setAttribute("schedulelist", clist);
                   
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        return SUCCESS;
    }
}
