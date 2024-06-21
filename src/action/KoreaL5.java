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
import service.*;

@SuppressWarnings("serial")
public class KoreaL5 extends ActionSupport {
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
    ArrayList<Content> onelist=new ArrayList<Content>();
    public String execute() throws IOException {
    	
			String percent="";
			
    	try {
    		String uname=request.getParameter("uname");
			Connection conn=db.getDBConnect();
			String sql1="select * from progress where name=? and ctype='Korea' and level='level4'";
			PreparedStatement pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, uname);
			ResultSet rs2=pstmt1.executeQuery();
			
			if(rs2.next()) {
				
				percent=rs2.getString("precent");
			}
			
			if(percent.equals("Complete all lessons and quiz") || percent.equals("100.0")) {
			
			String sql="select * from content where ctype='Korea' and level='level5'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Content content = new Content();
                content.setCid(rs.getInt("cid"));
                content.setName(rs.getString("name"));
                content.setAbout(rs.getString("about"));
                content.setLevel(rs.getString("level"));
                content.setCtype(rs.getString("ctype"));
                content.setVideo(rs.getString("video"));
                content.setPpt(rs.getString("ppt"));
                onelist.add(content);
            }
            
            session.setAttribute("onelist", onelist);
            session.setMaxInactiveInterval(60*60*24);
            return SUCCESS;
			}
			else {
				PrintWriter out=response.getWriter();
				 out.println("<!DOCTYPE html>");
	                out.println("<html>");
	                out.println("<head>");
	                out.println("<title>Previous lesson Alert</title>");
	                out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css\">");
	                out.println("</head>");
	                out.println("<body>");
	                out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11\"></script>");
	                out.println("<script>");
	                out.println("document.addEventListener('DOMContentLoaded', function() {");
	                out.println("Swal.fire({icon: 'warning', title: 'You need to learn previous lessons', showConfirmButton: true});");
	                out.println("});");
	                out.println("</script>");
	                out.println("</body>");
	                out.println("</html>");
	                out.flush();
				return ERROR;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
	
			e.printStackTrace();
		}
    	
    	return ERROR;
    }
}
