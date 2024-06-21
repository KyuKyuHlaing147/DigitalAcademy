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
public class Addnewquiz extends ActionSupport{
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
    String coption;
	String question,option1,option2,option3,option4,level1, level2, level3, level4, ctype;
	
	
    
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



	public String getCoption() {
		return coption;
	}



	public void setCoption(String coption) {
		this.coption = coption;
	}



	public String getQuestion() {
		return question;
	}



	public void setQuestion(String question) {
		this.question = question;
	}



	public String getOption1() {
		return option1;
	}



	public void setOption1(String option1) {
		this.option1 = option1;
	}



	public String getOption2() {
		return option2;
	}



	public void setOption2(String option2) {
		this.option2 = option2;
	}



	public String getOption3() {
		return option3;
	}



	public void setOption3(String option3) {
		this.option3 = option3;
	}



	public String getOption4() {
		return option4;
	}



	public void setOption4(String option4) {
		this.option4 = option4;
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



	public String getCtype() {
		return ctype;
	}



	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public void validate() {
	    if (question == null || question.isEmpty()) {
	        addFieldError("question", "Question is required");
	    }

	    if (option1 == null || option1.isEmpty()) {
	        addFieldError("option1", "Option 1 is required");
	    }

	    if (option2 == null || option2.isEmpty()) {
	        addFieldError("option2", "Option 2 is required");
	    }

	    if (option3 == null || option3.isEmpty()) {
	        addFieldError("option3", "Option 3 is required");
	    }

	    if (option4 == null || option4.isEmpty()) {
	        addFieldError("option4", "Option 4 is required");
	    }

	    if(coption == null || coption.isEmpty()) {
	    	addFieldError("coption", "Correct Option is required");
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
	}


	public String execute() throws IOException {
    	
		try {
			Connection conn = db.getDBConnect();
			String sql="insert into Korea_Quiz (question,option1,option2,option3,option4,correct_option,level,ctype) values (?,?,?,?,?,?,?,?)";
			PreparedStatement preAdmin = conn.prepareStatement(sql);
            preAdmin.setString(1, question);
            preAdmin.setString(2, option1);
            preAdmin.setString(3, option2);
            preAdmin.setString(4, option3);
            preAdmin.setString(5, option4);
            preAdmin.setInt(6, Integer.parseInt(coption) );
            if ("Korea".equals(ctype)) {
	            preAdmin.setString(7, level1); // Assuming level1 is a variable that holds the value of level for content types Korea, Chinese, Japan
	        } 
            else if("Chinese".equals(ctype) ) {
	        	preAdmin.setString(7, level2);
	        }
	        else if("Japan".equals(ctype)) {
	        	preAdmin.setString(7, level3);
	        }
            else {
	            preAdmin.setString(7, level4); // Assuming level2 is a variable that holds the value of level for other content types
	        }
            preAdmin.setString(8, ctype);
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
