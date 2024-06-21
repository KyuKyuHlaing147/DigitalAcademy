package action;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import service.DBOperate;

@SuppressWarnings("serial")
public class SignUp extends ActionSupport{
	
	 	private String username;
	    private String password; 
	    private String dob; 
	    private String gender;
	    private String email;
	    private String telephone; 
	    private String country;
	    private String zip;
	    private File pictureFile;
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getDob() {
			return dob;
		}
		public void setDob(String dob) {
			this.dob = dob;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getTelephone() {
			return telephone;
		}
		public void setTelephone(String telephone) {
			this.telephone = telephone;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public String getZip() {
			return zip;
		}
		public void setZip(String zip) {
			this.zip = zip;
		}
		public File getPictureFile() {
			return pictureFile;
		}
		public void setPictureFile(File pictureFile) {
			this.pictureFile = pictureFile;
		}
		
		public void validate() {
			   if(country.equals("Choose country")){
				   addFieldError("country","* Choose Country");
			   }
			   if(gender==null) {
				   addFieldError("gender","* Choose Gender");
			   }
		   }
		
		public String execute() throws IOException {


	        DBOperate db = new DBOperate();
	        try {
	            Connection conn = db.getDBConnect();
	            
	            String sql = "INSERT INTO register (username, password, dob, gender, email, telephone, country, zip, profile_picture) " +
	                         "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, username);
	            pstmt.setString(2, password);
	            pstmt.setString(3, dob);
	            pstmt.setString(4, gender);
	            pstmt.setString(5, email);
	            pstmt.setString(6, telephone);
	            pstmt.setString(7, country);
	            pstmt.setString(8, zip);
	            
	            // Read the image file and set it as byte array
	            if (pictureFile != null) {
	                FileInputStream fis = new FileInputStream(pictureFile);
	                pstmt.setBinaryStream(9, fis, (int) pictureFile.length());
	            } else {
	                pstmt.setNull(9, java.sql.Types.BLOB);
	            }
	            
	            pstmt.executeUpdate();
	            HttpServletResponse response = ServletActionContext.getResponse();
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
	                out.println("Swal.fire({icon: 'success', title: 'Successfully Register', showConfirmButton: true});");
	                out.println("});");
	                out.println("</script>");
	                out.println("</body>");
	                out.println("</html>");
	                out.flush();
	            
	            pstmt.close();
	            conn.close();
	            
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            return ERROR;
	        }
	        return SUCCESS;
	    }

}
