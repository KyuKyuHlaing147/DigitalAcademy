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
import service.Progress;

@SuppressWarnings("serial")
public class IncreaseProgress extends ActionSupport {
    
    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    HttpServletRequest request = ServletActionContext.getRequest();
    int count;
    double percentage;
    ArrayList<Progress> plist=new ArrayList<Progress>();

    public String execute() {
        String ctype = request.getParameter("ctype");
        String level = request.getParameter("level");

        try {
            Connection conn = db.getDBConnect();
            
            PreparedStatement preCount = conn.prepareStatement("SELECT COUNT(*) FROM content WHERE ctype=? AND level=?");
            preCount.setString(1, ctype);
            preCount.setString(2, level);
            ResultSet rsCount = preCount.executeQuery();
            if (rsCount.next()) {
                count = rsCount.getInt(1);
            } else {
                count = 0;
            }
            rsCount.close();
            preCount.close();
            
            if (count != 0) {
            	double pp=100.0/count;
            	String formattedPercentage = String.format("%.2f", pp);
                percentage = Double.parseDouble(formattedPercentage);
            } else {
                percentage = 0.0; 
            }

            String name = (String) session.getAttribute("username");
            
            PreparedStatement preCheck = conn.prepareStatement("SELECT * FROM progress WHERE name=? AND level=? AND ctype=?");
            preCheck.setString(1, name);
            preCheck.setString(2, level);
            preCheck.setString(3, ctype);
            ResultSet rsCheck = preCheck.executeQuery();
            
            if (rsCheck.next()) {
            	String existingPercent = rsCheck.getString("precent");
                double newPercentage;
                if ("Complete all lessons and quiz".equals(existingPercent)) {
                    newPercentage = 100.0;
                } else {
                    double existingPercentDouble = Double.parseDouble(existingPercent);
                    newPercentage = existingPercentDouble + percentage;
                }
                String np=String.valueOf(newPercentage);
                
             
                if (newPercentage <= 100.0) {
                    PreparedStatement update = conn.prepareStatement("UPDATE progress SET precent=? WHERE name=? AND level=? AND ctype=?");
                    update.setString(1, np);
                    update.setString(2, name);
                    update.setString(3, level);
                    update.setString(4, ctype);
                    update.executeUpdate();
                    
                    
                    System.out.println("Updated percentage: " + percentage);
                    
                    
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
                } else {
                	newPercentage = 100.0; 
                    PreparedStatement update = conn.prepareStatement("UPDATE progress SET precent=? WHERE name=? AND level=? AND ctype=?");
                    update.setString(1, String.valueOf(newPercentage));
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
                     
                }
            } else {
                PreparedStatement insert = conn.prepareStatement("INSERT INTO progress (name, level ,ctype, precent) VALUES (?, ?, ?, ?)");
                insert.setString(1, name);
                insert.setString(2, level);
                insert.setString(3, ctype);
                insert.setString(4, String.valueOf(percentage));
                insert.executeUpdate(); 
                
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
            }

            session.setAttribute("progress", plist);

            conn.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return ERROR;
        }
        
        String cid = request.getParameter("cid");
        int increase = 0; 
        try {
            increase = Integer.parseInt(cid.trim());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return ERROR; 
        }
        increase++;
        
        try {
            Connection conn = db.getDBConnect();
            PreparedStatement pre = conn.prepareStatement("SELECT * FROM content where cid=? AND ctype=? AND level=?");
            pre.setString(1, String.valueOf(increase));
            pre.setString(2,ctype);
            pre.setString(3, level);
            ResultSet rs = pre.executeQuery();

            if (rs.next()) {
                Content content = new Content();
                content.setCid(rs.getInt("cid"));
                content.setName(rs.getString("name"));
                content.setAbout(rs.getString("about"));
                content.setCtype(rs.getString("ctype"));
                content.setLevel(rs.getString("level"));
                content.setVideo(rs.getString("video"));
                content.setPpt(rs.getString("ppt"));
                session.setAttribute("content2", content);
                
            }

            rs.close();
            pre.close();
            conn.close();

            return "usersuccess";

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
