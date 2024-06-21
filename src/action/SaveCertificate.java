package action;

import com.opensymphony.xwork2.ActionSupport;
import service.Certificate;
import service.DBOperate;
import service.Progress;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class SaveCertificate extends ActionSupport {

    private DBOperate db = new DBOperate();
    private String name;
    private String email;
    private String ctype;
    private String level;
    private ArrayList<Progress> plist = new ArrayList<>();
    private HttpSession session = ServletActionContext.getRequest().getSession();
    private Connection conn;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    @Override
    public String execute() {
        conn = null;
        PreparedStatement update = null;
        PreparedStatement check1 = null;
        ResultSet rsProgress = null;

        try {
            conn = db.getDBConnect();
            update = conn.prepareStatement("UPDATE progress SET precent=? WHERE name=? AND level=? AND ctype=?");
            update.setString(1, "Complete all lessons and quiz");
            update.setString(2, name);
            update.setString(3, level);
            update.setString(4, ctype);
            update.executeUpdate();

            check1 = conn.prepareStatement("SELECT * FROM progress WHERE name=?");
            check1.setString(1, name);
            rsProgress = check1.executeQuery();
            while (rsProgress.next()) {
                Progress pg = new Progress();
                pg.setName(name);
                pg.setCtype(rsProgress.getString("ctype"));
                pg.setLevel(rsProgress.getString("level"));
                pg.setProgress(rsProgress.getString("precent"));
                plist.add(pg);
            }
            session.setAttribute("progress", plist);

            byte[] pdfContent = generateCertificatePDF(name);

            // Save certificate PDF into database
            boolean success = saveCertificateInDatabase(name, email, pdfContent);

            if (success) {
                // Fetch and set certificates to session
                ArrayList<Certificate> certificates = fetchCertificatesFromDatabase();
                session.setAttribute("certificates", certificates);
                return SUCCESS;
            } else {
                addActionError("Failed to save certificate PDF in the database");
                return ERROR;
            }
        } catch (ClassNotFoundException | SQLException | IOException e) {
            addActionError("Error occurred: " + e.getMessage());
            return ERROR;
        } finally {
            try {
                if (rsProgress != null) rsProgress.close();
                if (check1 != null) check1.close();
                if (update != null) update.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private byte[] generateCertificatePDF(String name) throws IOException {
        // Generate PDF content here (sample code provided below)
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        // Sample: Just write some text to the PDF for demonstration
        outputStream.write("Certificate of Completion".getBytes());
        return outputStream.toByteArray();
    }

    private boolean saveCertificateInDatabase(String name, String email, byte[] pdfContent) throws ClassNotFoundException {
        String sqlCheckExistence = "SELECT COUNT(*) AS count FROM UserCertificates WHERE name=? AND email=? AND ctype=? AND level=?";
        String sqlInsert = "INSERT INTO UserCertificates (name, email, ctype, level, pdf_content) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = db.getDBConnect();
             PreparedStatement pstmtCheckExistence = conn.prepareStatement(sqlCheckExistence);
             PreparedStatement pstmtInsert = conn.prepareStatement(sqlInsert)) {

            // Check if the record already exists
            pstmtCheckExistence.setString(1, name);
            pstmtCheckExistence.setString(2, email);
            pstmtCheckExistence.setString(3, ctype);
            pstmtCheckExistence.setString(4, level);
            ResultSet rs = pstmtCheckExistence.executeQuery();
            rs.next();
            int count = rs.getInt("count");
            rs.close();

            if (count > 0) {
                // Data already exists, do not insert
                return false;
            }

            // Data does not exist, insert new record
            pstmtInsert.setString(1, name);
            pstmtInsert.setString(2, email);
            pstmtInsert.setString(3, ctype);
            pstmtInsert.setString(4, level);
            pstmtInsert.setBytes(5, pdfContent);
            int rowsAffected = pstmtInsert.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    private ArrayList<Certificate> fetchCertificatesFromDatabase() throws SQLException, ClassNotFoundException {
        ArrayList<Certificate> certificates = new ArrayList<>();
        String sqlFetch = "SELECT * FROM UserCertificates WHERE name=?";

        try (Connection conn = db.getDBConnect();
             PreparedStatement pstmtFetch = conn.prepareStatement(sqlFetch)) {
            pstmtFetch.setString(1, name);
            try (ResultSet rs = pstmtFetch.executeQuery()) {
                while (rs.next()) {
                    Certificate certificate = new Certificate();
                    certificate.setId(rs.getInt("id"));
                    certificate.setName(rs.getString("name"));
                    certificate.setEmail(rs.getString("email"));
                    certificate.setCtype(rs.getString("ctype"));
                    certificate.setLevel(rs.getString("level"));
                    certificates.add(certificate);
                }
            }
        }
        return certificates;
    }
}
