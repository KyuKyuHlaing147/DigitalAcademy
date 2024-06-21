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
import service.Schedule;

@SuppressWarnings("serial")
public class searchschedule extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    
    private String search; 
    

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }
    
   
    @Override
    public String execute() {
        ArrayList<Schedule> searchList = new ArrayList<>();
 
        if (search != null && !search.isEmpty() ) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "SELECT * FROM schedule WHERE name LIKE ?";
                PreparedStatement pre = conn.prepareStatement(sql);
                pre.setString(1, search+ "%"); 
                ResultSet rs = pre.executeQuery();
                
                while (rs.next()) {
                	 Schedule sh=new Schedule();
                	 sh.setName(rs.getString("name"));
 					sh.setStart_date(rs.getString("start_date"));
 					sh.setEnd_date(rs.getString("end_date"));
 					sh.setHour(rs.getString("hour"));
 					sh.setTimezone(rs.getString("timezone"));
 					sh.setLink(rs.getString("link"));
 					sh.setLink(rs.getString("ppt"));
 					sh.setTname(rs.getString("teacher"));
                     searchList.add(sh);
                }
                
                // Set search results in session attribute
                session.setAttribute("searchlist2", searchList);
                
                conn.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        
        return SUCCESS;
    }

	
}
