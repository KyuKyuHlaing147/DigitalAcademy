package action;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.Certificate;
import service.DBOperate;
import service.Progress;
import service.UserProfile;

@SuppressWarnings("serial")
public class showprofile extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    HttpServletRequest request = ServletActionContext.getRequest();
    private int id;
    public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	private String username;
    private String password;
    private String cpassword;
    private String dob;
    private String gender;
    private String email;
    private String telephone;
    private String country;
    private String zip;
    private byte[] profilePicture;


    public DBOperate getDb() {
		return db;
	}


	public void setDb(DBOperate db) {
		this.db = db;
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


	public String getCpassword() {
		return cpassword;
	}


	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
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


	public byte[] getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(byte[] profilePicture) {
		this.profilePicture = profilePicture;
	}

	public String execute() {
        String uname = (String) session.getAttribute("username");
        ArrayList<UserProfile> ulist = new ArrayList<UserProfile>();
        Connection conn = null;
        try {
            conn = db.getDBConnect();
            String sql = "SELECT * FROM register WHERE username=?";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, uname);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                UserProfile up = new UserProfile();
                up.setId(resultSet.getInt("id"));
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
                session.setAttribute("userprofile", ulist);
                session.setMaxInactiveInterval(60*60*24);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } 
        
       
        ArrayList<Progress> plist=new ArrayList<Progress>();
       
        try {
        		PreparedStatement check1 = conn.prepareStatement("SELECT * FROM progress WHERE name=?");
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
        		 session.setMaxInactiveInterval(60*60*24);
        		 
        } catch (SQLException e) {
            e.printStackTrace();
            return ERROR;
        }
        
        
        
        ArrayList<Certificate> certificates = new ArrayList<Certificate>();

        try (PreparedStatement stmt = conn.prepareStatement("SELECT * FROM UserCertificates WHERE name=? ")) {
            stmt.setString(1, uname); // Set the value for the parameter
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Certificate certificate = new Certificate();
                    certificate.setId(rs.getInt("id"));
                    certificate.setName(rs.getString("name"));
                    certificate.setEmail(rs.getString("email"));
                    certificate.setCtype(rs.getString("ctype"));
                    certificate.setLevel(rs.getString("level"));

                    // Retrieve the PDF content from the result set
                    InputStream pdfInputStream = rs.getBinaryStream("pdf_content");

                    // Read the PDF content from the input stream
                    byte[] pdfContent = null;
                    if (pdfInputStream != null) {
                        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                        int bytesRead;
                        byte[] data = new byte[4096];
                        try {
                            while ((bytesRead = pdfInputStream.read(data, 0, data.length)) != -1) {
                                buffer.write(data, 0, bytesRead);
                            }
                            buffer.flush();
                            pdfContent = buffer.toByteArray();
                        } catch (IOException e) {
                            e.printStackTrace();
                        } finally {
                            try {
                                pdfInputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    certificate.setPdfContent(pdfContent);

                    certificates.add(certificate);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            session.setAttribute("certificates", certificates);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return SUCCESS;

    }
}