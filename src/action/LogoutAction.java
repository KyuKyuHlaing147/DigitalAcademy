package action;

import com.opensymphony.xwork2.ActionSupport;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class LogoutAction extends ActionSupport {
    public String execute() throws ServletException, IOException {
        HttpServletRequest request = ServletActionContext.getRequest();
       
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.invalidate();
    
        return SUCCESS;
    }
}
