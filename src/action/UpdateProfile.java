package action;

import java.io.File;
import java.io.FileInputStream;
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
import service.Progress;
import service.UserProfile;

@SuppressWarnings("serial")
public class UpdateProfile extends ActionSupport {
	private int id;
    private String username;
    private String opassword;
    private String password;
    private String dob;
    private String gender;
    private String email;
    private String telephone;
    private String country;
    private String zip;
    private File pictureFile;
    
    

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOpassword() {
		return opassword;
	}

	public void setOpassword(String opassword) {
		this.opassword = opassword;
	}

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
	                String query = "SELECT password FROM register WHERE id = ?";
	                ps = con.prepareStatement(query);
	                ps.setInt(1, id); 
	                rs = ps.executeQuery();

	                if (rs.next()) {
	                    String currentPassword = rs.getString("password");
	                    if (!opassword.equals(currentPassword)) {
	                        addFieldError("opassword", "Current Password is not correct");
	                    }
	                }
	            } catch (Exception e) {
	                e.printStackTrace();
	            } 
	        }
	        if (dob == null || dob.isEmpty()) {
	            addFieldError("dob", "Date of Birth is required");
	        }
	        
	        if (gender == null || gender.isEmpty()) {
	            addFieldError("gender", "Gender is required");
	        }
	        
	        if (telephone == null || telephone.isEmpty()) {
	            addFieldError("telephone", "Telephone is required");
	        }
	        
	        if (country == null || country.isEmpty()) {
	            addFieldError("country", "Country is required");
	        }
	        
	        if (zip == null || zip.isEmpty()) {
	            addFieldError("zip", "ZIP code is required");
	        }
	        if (email == null || email.isEmpty()) {
	            addFieldError("email", "Email is required");
	        } 
	        
	    }
	 

	
	
	@SuppressWarnings("resource")
	public String execute() throws IOException, ClassNotFoundException, SQLException {
		DBOperate db=new DBOperate();
        Connection con = db.getDBConnect();
        PreparedStatement ps = null;
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpSession session = request.getSession();
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        try {
            
        	  
            @SuppressWarnings("unchecked")
			ArrayList<UserProfile> userProfileList = (ArrayList<UserProfile>) ServletActionContext.getRequest()
                    .getSession().getAttribute("userprofile");

            if (userProfileList != null && !userProfileList.isEmpty()) {
                for (UserProfile up : userProfileList) {
                    if (up.getUsername().equals(uname) && up.getEmail().equals(email)) {
                        up.setUsername(username);
                        up.setPassword(password);
                        up.setDob(dob);
                        up.setGender(gender);
                        up.setEmail(email);
                        up.setPhone(telephone);
                        up.setCountry(country);
                        up.setZip(zip);

                        // Process the picture file here if needed
                        if (pictureFile != null) {
                            FileInputStream fis = new FileInputStream(pictureFile);
                            byte[] data = new byte[(int) pictureFile.length()];
                            fis.read(data);
                            up.setProfilePicture(data);
                        }

                        con=db.getDBConnect();
                        String query = "UPDATE register SET username=?, password=?, dob=?, gender=?, email=?, telephone=?, country=?, zip=?, profile_picture=? WHERE id=?";
                        ps = con.prepareStatement(query);
                        ps.setString(1, up.getUsername());
                        ps.setString(2, up.getPassword());
                        ps.setString(3, up.getDob());
                        ps.setString(4, up.getGender());
                        ps.setString(5, up.getEmail());
                        ps.setString(6, up.getPhone());
                        ps.setString(7, up.getCountry());
                        ps.setString(8, up.getZip());
                        ps.setBytes(9, up.getProfilePicture());
                        ps.setInt(10, id); 
                       
                        ps.executeUpdate();

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
                            
                        
                        break;
                    }
                }
            }

            String sql = "SELECT * FROM register WHERE username=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, uname);
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<UserProfile> ulist = new ArrayList<UserProfile>();
            if (resultSet.next()) {
                UserProfile up = new UserProfile();

                up.setUsername(resultSet.getString("username"));
                up.setPassword(resultSet.getString("password"));
                up.setDob(resultSet.getString("dob"));
                up.setGender(resultSet.getString("gender"));
                up.setEmail(resultSet.getString("email"));
                up.setPhone(resultSet.getString("telephone"));
                up.setCountry(resultSet.getString("country"));
                up.setZip(resultSet.getString("zip"));

                byte[] pictureData = resultSet.getBytes("profile_picture");
                up.setProfilePicture(pictureData);

                ulist.add(up);
                session.setAttribute("userprofile2", ulist);
                
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } 
        
       
        ArrayList<Progress> plist=new ArrayList<Progress>();
       
        try {
        		PreparedStatement check1 = con.prepareStatement("SELECT * FROM progress WHERE name=?");
        		check1.setString(1, uname);
        		ResultSet rsProgress = check1.executeQuery();
        		while (rsProgress.next()) {
            	
                Progress pg = new Progress();
                pg.setName(uname);
                pg.setCtype(rsProgress.getString("ctype"));
                pg.setLevel(rsProgress.getString("level"));
                pg.setProgress(rsProgress.getString("precent"));
                plist.add(pg);
  
            }
        
        		 session.setAttribute("progress", plist);
        } catch (SQLException e) {
            e.printStackTrace();
            return ERROR;
        }
        
        

        return SUCCESS;

           
    }
}
