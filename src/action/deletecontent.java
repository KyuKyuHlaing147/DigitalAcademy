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
public class deletecontent extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpServletRequest request = ServletActionContext.getRequest();

    private HttpSession session = request.getSession();
    
    private String name;
    private String about;
    private String ctype;
    private String level;
    private String video;
    private String ppt;
    
    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getPpt() {
        return ppt;
    }

    public void setPpt(String ppt) {
        this.ppt = ppt;
    }
    
    public String execute() {
    	ArrayList<Content> clist = new ArrayList<>();
        String id = request.getParameter("id");
        if (id != null && !id.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "delete from content where cid=?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, Integer.parseInt(id));
                int row = ps.executeUpdate();
                if (row > 0) {
                	String name2 = request.getParameter("btn");
                	PreparedStatement pre = conn.prepareStatement("SELECT * FROM content where ctype=?");
                    pre.setString(1, name2);
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
                    
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        return SUCCESS;
    }
}
