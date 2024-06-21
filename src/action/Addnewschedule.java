package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;

@SuppressWarnings("serial")
public class Addnewschedule extends ActionSupport{
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
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
		
		if(name == null || name.isEmpty() || name.equals("Choose Course")) {
			 addFieldError("name","Course Name is required");
		 }
		if (start_date == null || start_date.isEmpty()) {
	        addFieldError("start_date", "Start date is required");
	    }

	    if (end_date == null || end_date.isEmpty()) {
	        addFieldError("end_date", "End date is required");
	    }

	    if (hour == null || hour.isEmpty() || hour.equals("Choose Hour") ) {
	        addFieldError("hour", "Hour is required");
	    }

	    if (timezone == null || timezone.isEmpty() || timezone.equals("Choose Timezone")) {
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
    	
		try {
			Connection conn = db.getDBConnect();
			String sql="insert into schedule (name, start_date, end_date, hour, timezone, link, ppt, teacher) values (?,?,?,?,?,?,?,?)";
			PreparedStatement preAdmin = conn.prepareStatement(sql);
            preAdmin.setString(1, name);
            preAdmin.setString(2, start_date);
            preAdmin.setString(3, end_date);
            preAdmin.setString(4, hour);
            preAdmin.setString(5, timezone);
            preAdmin.setString(6, link);
            preAdmin.setString(7, ppt);
            preAdmin.setString(8, tname);
            int row=preAdmin.executeUpdate();
            if(row>0) {
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
	                out.println("Swal.fire({icon: 'success', title: 'Successfully Added', showConfirmButton: true});");
	                out.println("});");
	                out.println("</script>");
	                out.println("</body>");
	                out.println("</html>");
	                out.flush();
				
            }

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    	return SUCCESS;
    }
    
}
