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

import service.Content;
import service.DBOperate;

@SuppressWarnings("serial")
public class updatecontent extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    private HttpSession session = request.getSession();
    
    private String name;
    private String about;
    private String ctype;
    private String level;
    private String video;
    private String ppt;
    
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

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
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
		if(ctype==null || ctype.isEmpty()) {
			addFieldError("ctype","Content Type is required");
		}
		if(level==null || level.isEmpty()) {
			addFieldError("level","Level is required");
		}
		if(video==null || video.isEmpty()) {
			addFieldError("video","Video Link is required");
		}
		if(ppt==null || ppt.isEmpty()) {
			addFieldError("ppt","PPT Link is required");
		}
	}
	
    public String execute() throws IOException {
    	ArrayList<Content> clist = new ArrayList<>();
        String id = request.getParameter("id");
        if (id != null && !id.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "UPDATE content SET name=?, about=?, ctype=?, level=?, video=?, ppt=? WHERE cid=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, about);
                ps.setString(3, ctype);
                ps.setString(4, level);
                ps.setString(5, video);
                ps.setString(6, ppt);
                ps.setInt(7, Integer.parseInt(id));
                int row = ps.executeUpdate();
                if (row > 0) {
                	String name2 = request.getParameter("btn");
                	PreparedStatement pre = conn.prepareStatement("SELECT * FROM content where ctype=?");
                    pre.setString(1, name2);
                    ResultSet rs = pre.executeQuery();

                    while (rs.next()) {
                        Content content = new Content();
                        content.setCid(rs.getInt("cid"));
                        content.setName(rs.getString("name"));
                        content.setAbout(rs.getString("about"));
                        content.setCtype(rs.getString("ctype"));
                        content.setLevel(rs.getString("level"));
                        content.setVideo(rs.getString("video"));
                        content.setPpt(rs.getString("ppt"));
                        clist.add(content);
                    }
                    session.setAttribute("contentlist", clist);
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
