package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.Content;
import service.DBOperate;

@SuppressWarnings("serial")
public class searchaction extends ActionSupport {
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
    
    @Override
    public String execute() {
        ArrayList<Content> searchList = new ArrayList<>();
 
        if (search != null && !search.isEmpty() && content!=null && !content.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "SELECT * FROM content WHERE level=? and ctype=?";
                PreparedStatement pre = conn.prepareStatement(sql);
                pre.setString(1, search.toLowerCase()); 
                pre.setString(2,content);
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
                    searchList.add(content);
                }
                
                // Set search results in session attribute
                session.setAttribute("searchlist", searchList);
                session.setMaxInactiveInterval(60*60*24);
                conn.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        
        return SUCCESS;
    }

	
}
