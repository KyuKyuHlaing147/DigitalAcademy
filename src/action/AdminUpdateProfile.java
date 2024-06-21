package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;

@SuppressWarnings("serial")
public class AdminUpdateProfile extends ActionSupport{
	private String username;
    private String opassword;
    private String password;
    private String email;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOpassword() {
		return opassword;
	}
	public void setOpassword(String opassword) {
		this.opassword = opassword;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
    
	public void validate() {
	       
        if (username == null || username.isEmpty()) {
            addFieldError("username", "Username is required");
        }
        
        if(password == null || password.isEmpty()) {
        	addFieldError("password", "New Password is required");
        }
        if (opassword == null || opassword.isEmpty()) {
            addFieldError("opassword", "Current Password is required");
        } else {
            DBOperate db = new DBOperate();
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                con = db.getDBConnect();
                String query = "SELECT password FROM admin WHERE name = ?";
                ps = con.prepareStatement(query);
                ps.setString(1, getUsername()); 
                rs = ps.executeQuery();

                if (rs.next()) {
                    String currentPassword = rs.getString("password");
                    if (!opassword.equals(currentPassword)) {
                        addFieldError("opassword", "Current Password is not correct");
                    }
                } else {
                    addFieldError("opassword", "User not found");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } 
        }
      
        if (email == null || email.isEmpty()) {
            addFieldError("email", "Email is required");
        } 
        
    }
	
	
	public String execute() throws ClassNotFoundException, SQLException, IOException {
	    DBOperate db = new DBOperate();
	    Connection con = null;
	    PreparedStatement ps = null;
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpServletResponse response = ServletActionContext.getResponse();
	    HttpSession session = request.getSession();
	    
	    try {
	        con = db.getDBConnect();
	        String sql = "UPDATE Admin SET name=?, email=?, password=? WHERE name=?";
	        ps = con.prepareStatement(sql);
	        ps.setString(1, username);
	        ps.setString(2, email);
	        ps.setString(3, password);
	        ps.setString(4, username); // Condition for WHERE clause

	        int rowsUpdated = ps.executeUpdate();
	        if (rowsUpdated > 0) {
	            // Update successful
	            session.setAttribute("adminName", username);
	            session.setAttribute("adminpassword", password);
	            session.setAttribute("adminemail", email);

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
	            out.println("Swal.fire({icon: 'success', title: 'Successfully Updated', showConfirmButton: true});");
	            out.println("});");
	            out.println("</script>");
	            out.println("</body>");
	            out.println("</html>");
	            out.flush();
	            
	            return SUCCESS;
	        } else {
	            // Update failed
	            return ERROR;
	        }
	    } finally {
	        // Close resources in the finally block
	        if (ps != null) {
	            ps.close();
	        }
	        if (con != null) {
	            con.close();
	        }
	    }
	}

}
