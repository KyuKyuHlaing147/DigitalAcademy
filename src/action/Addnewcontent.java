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
public class Addnewcontent extends ActionSupport{
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
    String name,about,ctype,level1,level2,level3,level4,video,ppt;
    
    public String getAbout() {
		return about;
	}



	public void setAbout(String about) {
		this.about = about;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getCtype() {
		return ctype;
	}



	public void setCtype(String ctype) {
		this.ctype = ctype;
	}



	public String getLevel3() {
		return level3;
	}



	public void setLevel3(String level3) {
		this.level3 = level3;
	}



	public String getLevel4() {
		return level4;
	}



	public void setLevel4(String level4) {
		this.level4 = level4;
	}



	public String getLevel1() {
		return level1;
	}



	public void setLevel1(String level1) {
		this.level1 = level1;
	}



	public String getLevel2() {
		return level2;
	}



	public void setLevel2(String level2) {
		this.level2 = level2;
	}



	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}



	public String getPpt() {
		return ppt;
	}



	public void setPpt(String ppt) {
		this.ppt = ppt;
	}
    
	
	public void validate() {
		
		if(name==null || name.isEmpty()) {
			addFieldError("name","Name is required");
		}
		if(about==null || about.isEmpty()) {
			addFieldError("about","About is required");
		}
		if (ctype == null || ctype.isEmpty() || ctype.equals("Choose Course")) {
	        addFieldError("ctype", "Please select a valid content type");
	    }
		 if ("Korea".equals(ctype) && (level1 == null || level1.isEmpty() || level1.equals("Choose Level"))) {
		        addFieldError("level", "Please select a valid level for Korea");
		    } 
		    else if ("Chinese".equals(ctype) && (level2 == null || level2.isEmpty() || level2.equals("Choose Level"))) {
		        addFieldError("level", "Please select a valid level for Chinese");
		    } 
		    else if ("Japan".equals(ctype) && (level3 == null || level3.isEmpty() || level3.equals("Choose Level"))) {
		        addFieldError("level", "Please select a valid level for Japan");
		    } 
		    else if (!"Korea".equals(ctype) && !"Chinese".equals(ctype) && !"Japan".equals(ctype) && (level4 == null || level4.isEmpty() || level4.equals("Choose Level"))) {
		        addFieldError("level", "Please select a valid level for other content types");
		    }
		if(video==null || video.isEmpty()) {
			addFieldError("video","Video Link is required");
		}
		if(ppt==null || ppt.isEmpty()) {
			addFieldError("ppt","PPT Link is required");
		}
		
	}
	
	
	
	public String execute() throws IOException {
	    try {
	        Connection conn = db.getDBConnect();
	        String sql = "INSERT INTO content (name, about, ctype, level, video, ppt) VALUES (?, ?, ?, ?, ?, ?)";
	        PreparedStatement preAdmin = conn.prepareStatement(sql);
	        preAdmin.setString(1, name);
	        preAdmin.setString(2, about);
	        preAdmin.setString(3, ctype);
	        
	        // Depending on the content type, set the appropriate level value
	        if ("Korea".equals(ctype)) {
	            preAdmin.setString(4, level1); // Assuming level1 is a variable that holds the value of level for content types Korea, Chinese, Japan
	        } 
	        
	        else if("Chinese".equals(ctype) ) {
	        	preAdmin.setString(4, level2);
	        }
	        else if("Japan".equals(ctype)) {
	        	preAdmin.setString(4, level3);
	        }
	        else {
	            preAdmin.setString(4, level4); // Assuming level2 is a variable that holds the value of level for other content types
	        }
	        
	        preAdmin.setString(5, video);
	        preAdmin.setString(6, ppt);

	        int row = preAdmin.executeUpdate();
	        if (row > 0) {
	            PrintWriter out = response.getWriter();
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
	        // Handle exceptions
	        e.printStackTrace();
	    }
	    return SUCCESS;
	}





	
    
}
