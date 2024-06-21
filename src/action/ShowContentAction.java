package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.Content;
import service.DBOperate;

@SuppressWarnings("serial")
public class ShowContentAction extends ActionSupport {
    DBOperate db = new DBOperate();
    HttpSession session = ServletActionContext.getRequest().getSession();
    HttpServletRequest request=ServletActionContext.getRequest();
    
    public String execute() {
        ArrayList<Content> clist = new ArrayList<>();
        String name = request.getParameter("btn");

        try {
            Connection conn = db.getDBConnect();
            PreparedStatement pre = conn.prepareStatement("SELECT * FROM content where ctype=?");
            pre.setString(1, name);
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
            session.setMaxInactiveInterval(60*60*24);
          
            rs.close();
            pre.close();
            conn.close();

            return SUCCESS;

        } catch (SQLException | ClassNotFoundException e) {
           
            e.printStackTrace(); 
            return ERROR;
        }
    }

}
