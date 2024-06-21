package action;

import java.io.IOException;
import java.io.PrintWriter;
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
public class updateschedule extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    private HttpSession session = request.getSession();
    
    String name,start_date, end_date,hour,timezone,link,ppt,tname;

    
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getStart_date() {
		return start_date;
	}


	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}


	public String getEnd_date() {
		return end_date;
	}


	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}


	public String getHour() {
		return hour;
	}


	public void setHour(String hour) {
		this.hour = hour;
	}


	public String getTimezone() {
		return timezone;
	}


	public void setTimezone(String timezone) {
		this.timezone = timezone;
	}


	public String getLink() {
		return link;
	}


	public void setLink(String link) {
		this.link = link;
	}


	public String getPpt() {
		return ppt;
	}


	public void setPpt(String ppt) {
		this.ppt = ppt;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}

	
	
 public void validate() {
	 if(name == null || name.isEmpty()) {
		 addFieldError("name","Name is required");
	 }
	 if (start_date == null || start_date.isEmpty()) {
	        addFieldError("start_date", "Start date is required");
	    }

	    if (end_date == null || end_date.isEmpty()) {
	        addFieldError("end_date", "End date is required");
	    }

	    if (hour == null || hour.isEmpty()) {
	        addFieldError("hour", "Hour is required");
	    }

	    if (timezone == null || timezone.isEmpty()) {
	        addFieldError("timezone", "Timezone is required");
	    }

	    if (link == null || link.isEmpty()) {
	        addFieldError("link", "Link is required");
	    }

	    if (ppt == null || ppt.isEmpty()) {
	        addFieldError("ppt", "PPT is required");
	    }

	    if (tname == null || tname.isEmpty()) {
	        addFieldError("tname", "Trainer name is required");
	    }
 }


	public String execute() throws IOException {
    	ArrayList<Schedule> clist = new ArrayList<>();
        String sname=request.getParameter("btn");
        if (sname != null && !sname.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "UPDATE schedule SET name=?, start_date=?, end_date=?, hour=?, timezone=?, link=?, ppt=?, teacher=? WHERE name=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, start_date);
                ps.setString(3, end_date);
                ps.setString(4, hour);
                ps.setString(5, timezone);
                ps.setString(6, link);
                ps.setString(7, ppt);
                ps.setString(8, tname);
                ps.setString(9, sname);
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
                    PrintWriter out=response.getWriter();
   				 	out.println("<!DOCTYPE html>");
   	                out.println("<html>");
   	                out.println("<head>");
   	                out.println("<title>Alert</title>");
   	                out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css\">");
   	                out.println("</head>");
   	                out.println("<body>");
   	                out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11\"></script>");
   	                out.println("<script>");
   	                out.println("document.addEventListener('DOMContentLoaded', function() {");
   	                out.println("Swal.fire({icon: 'success', title: 'Successfully Updated', showConfirmButton: true});");
   	                out.println("});");
   	                out.println("</script>");
   	                out.println("</body>");
   	                out.println("</html>");
   	                out.flush();
   				
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        return SUCCESS;
    }
}
