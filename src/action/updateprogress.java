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

import service.DBOperate;
import service.Progress;

@SuppressWarnings("serial")
public class updateprogress extends ActionSupport{
	HttpServletRequest request = ServletActionContext.getRequest();
	private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    ArrayList<Progress> plist=new ArrayList<Progress>();
	
	public String execute() {
		String ctype = request.getParameter("ctype");
        String level = request.getParameter("level");
        String name = (String) session.getAttribute("username");
        Connection conn;
		try {
			conn = db.getDBConnect();
			PreparedStatement update = conn.prepareStatement("UPDATE progress SET precent=? WHERE name=? AND level=? AND ctype=?");
			 update.setString(1, "Complete all lessons and quiz" );
             update.setString(2, name);
             update.setString(3, level);
             update.setString(4, ctype);
             update.executeUpdate();
			
             
             PreparedStatement check1 = conn.prepareStatement("SELECT * FROM progress WHERE name=?");
             check1.setString(1, name);
             ResultSet rsProgress = check1.executeQuery();
             while (rsProgress.next()) {
                 Progress pg = new Progress();
                 pg.setName(name);
                 pg.setCtype(rsProgress.getString("ctype"));
                 pg.setLevel(rsProgress.getString("level"));
                 pg.setProgress(rsProgress.getString("precent"));
                 plist.add(pg);
			
             }
             
             session.setAttribute("progress", plist);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        return SUCCESS;
	}
}
