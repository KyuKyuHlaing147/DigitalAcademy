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
import service.Quiz;

@SuppressWarnings("serial")
public class updatequiz extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();
    private HttpServletResponse response = ServletActionContext.getResponse();
    private HttpSession session = request.getSession();
    private String coption;
    private String question, option1, option2, option3, option4, level, ctype;

    

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

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
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

        if (coption == null || coption.isEmpty()) {
            addFieldError("coption", "Correct Option is required");
        }

        if (level == null || level.isEmpty()) {
            addFieldError("level", "Level is required");
        }

        if (ctype == null || ctype.isEmpty()) {
            addFieldError("ctype", "Content type is required");
        }
    }

    public String execute() throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        ArrayList<Quiz> qlist = new ArrayList<>();
        String id = request.getParameter("id");
        if (id != null && !id.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "UPDATE Korea_Quiz SET question=?, option1=?, option2=?, option3=?, option4=?, correct_option=?, level=?, ctype=? WHERE id=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, question);
                ps.setString(2, option1);
                ps.setString(3, option2);
                ps.setString(4, option3);
                ps.setString(5, option4);
                ps.setString(6, coption);
                ps.setString(7, level);
                ps.setString(8, ctype);
                ps.setInt(9, Integer.parseInt(id));
                int row = ps.executeUpdate();
                if (row > 0) {
                    String name = request.getParameter("btn");
                    PreparedStatement pre = conn.prepareStatement("SELECT * FROM Korea_Quiz where ctype=?");
                    pre.setString(1, name);
                    ResultSet rs = pre.executeQuery();

                    while (rs.next()) {
                        Quiz qz = new Quiz();
                        qz.setId(rs.getInt("id"));
                        qz.setQuestion(rs.getString("question"));
                        qz.setOption1(rs.getString("option1"));
                        qz.setOption2(rs.getString("option2"));
                        qz.setOption3(rs.getString("option3"));
                        qz.setOption4(rs.getString("option4"));
                        qz.setCoption(rs.getInt("correct_option"));
                        qz.setLevel(rs.getString("level"));
                        qz.setCtype(rs.getString("ctype"));
                        qlist.add(qz);
                    }

                    session.setAttribute("quizlist", qlist);

                    // Response with success message using JavaScript and SweetAlert2
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
