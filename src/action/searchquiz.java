package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;
import service.Quiz;

@SuppressWarnings("serial")
public class searchquiz extends ActionSupport {
	private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    
    private String search; 
    private String content;

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }
    
    public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String execute() {
		
		
		 ArrayList<Quiz> searchList = new ArrayList<>();
		 
	        if (search != null && !search.isEmpty() && content!=null && !content.isEmpty()) {
	            try {
	                Connection conn = db.getDBConnect();
	                String sql = "SELECT * FROM Korea_Quiz WHERE level=? and ctype=?";
	                PreparedStatement pre = conn.prepareStatement(sql);
	                pre.setString(1, search.toLowerCase()); 
	                pre.setString(2,content);
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
                        searchList.add(qz);
                   }

                   session.setAttribute("quizsearchlist", searchList);
	                
	                conn.close();
	            } catch (ClassNotFoundException | SQLException e) {
	                e.printStackTrace();
	                return ERROR;
	            }
	        }
	        
	        return SUCCESS;
	    }

}
