package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import service.DBOperate;
import service.Progress;

@SuppressWarnings("serial")
public class TakeExam extends ActionSupport {

    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    private HttpServletRequest request = ServletActionContext.getRequest();

    public String execute() {
        String ctype = request.getParameter("ctype");
        String level = request.getParameter("level");

        try {
            Connection conn = db.getDBConnect();
            String name = (String) session.getAttribute("username");
            String sql = "SELECT * FROM progress WHERE name=? AND level=? AND ctype=?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, name);
            pre.setString(2, level);
            pre.setString(3, ctype);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                String percent = rs.getString("precent");
                
                if ("Complete all lessons and quiz".equals(percent)) {
                    Progress pg = new Progress();
                    pg.setName(name);
                    pg.setLevel(level);
                    pg.setCtype(ctype);
                    session.setAttribute("progressquiz", pg);
                    return "usersuccess";
                } else {
                    double percentage = Double.parseDouble(percent);
                    if (percentage >= 100.0) {
                        Progress pg = new Progress();
                        pg.setName(name);
                        pg.setLevel(level);
                        pg.setCtype(ctype);
                        session.setAttribute("progressquiz", pg);
                        return "usersuccess";
                    } else {
                        session.setAttribute("quiz", "true");
                        return ERROR;
                    }
                }
            } else {
                // Handle case where no matching record found in the database
                return ERROR;
            }

             
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            
        }
        return SUCCESS;
    }
}
