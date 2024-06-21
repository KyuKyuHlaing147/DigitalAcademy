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
import service.UserProfile;

@SuppressWarnings("serial")
public class searchuser extends ActionSupport {
    private DBOperate db = new DBOperate();
    private HttpSession session = ServletActionContext.getRequest().getSession();

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String execute() {
        ArrayList<UserProfile> ulist = new ArrayList<>();
        if (name != null && !name.isEmpty()) {
            try {
                Connection conn = db.getDBConnect();
                String sql = "SELECT * FROM register WHERE username=?";
                PreparedStatement pre = conn.prepareStatement(sql);
                pre.setString(1, name);
                ResultSet resultSet = pre.executeQuery();
                while (resultSet.next()) {
                    UserProfile up = new UserProfile();
                    up.setUsername(resultSet.getString("username"));
                    up.setPassword(resultSet.getString("password"));
                    up.setDob(resultSet.getString("dob"));
                    up.setGender(resultSet.getString("gender"));
                    up.setEmail(resultSet.getString("email"));
                    up.setPhone(resultSet.getString("telephone"));
                    up.setCountry(resultSet.getString("country"));
                    up.setZip(resultSet.getString("zip"));
                    ulist.add(up);
                }
                session.setAttribute("searchplist", ulist);
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return ERROR;
            }
        }
        return SUCCESS;
    }
}
