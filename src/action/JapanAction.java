package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class JapanAction extends ActionSupport{
	
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		HttpSession session=request.getSession();

		public String execute() throws Exception{
			String uname=(String)session.getAttribute("username");
			if(uname==null || uname.isEmpty()) {
				session.setAttribute("Login", "true");
				return ERROR;
				
			}
			else {
				return SUCCESS;
			}
		}


		}
