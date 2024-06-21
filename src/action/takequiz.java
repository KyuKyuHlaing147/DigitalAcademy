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
public class takequiz extends ActionSupport {

    private DBOperate db = new DBOperate();
    private ArrayList<Quiz> qlist = new ArrayList<Quiz>();

    private String type;
    private String level;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String execute() {

        try {
            Connection conn = db.getDBConnect();
            String sql = "SELECT * FROM Korea_Quiz WHERE ctype = ? AND level = ? ORDER BY RAND() LIMIT 20";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, type);
            pre.setString(2, level);

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
                qlist.add(qz);
            }
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("quizlist", qlist);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return ERROR;
        }

        return SUCCESS;
    }
}
