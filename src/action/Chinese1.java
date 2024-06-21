package action;

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
public class Chinese1 extends ActionSupport {
	DBOperate db = new DBOperate();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();
    ArrayList<Content> onelist=new ArrayList<Content>();
    
    public String execute() {
    	
    	try {
			Connection conn=db.getDBConnect();
			String sql="select * from content where ctype='Chinese' and level='HSK 1'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Content content = new Content();
                content.setCid(rs.getInt("cid"));
                content.setName(rs.getString("name"));
                content.setAbout(rs.getString("about"));
                content.setCtype(rs.getString("ctype"));
                content.setLevel(rs.getString("level"));
                content.setVideo(rs.getString("video"));
                content.setPpt(rs.getString("ppt"));
                onelist.add(content);
            }
            
            session.setAttribute("onelist", onelist);
            session.setMaxInactiveInterval(60*60*24);
			
		} catch (ClassNotFoundException | SQLException e) {
	
			e.printStackTrace();
		}
    	
    	return SUCCESS;
    }
}
