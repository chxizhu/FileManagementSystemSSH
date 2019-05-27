package control.action;

import model.VUser;
import business.dao.UserDAO;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class PassdEitsaction extends BaseAction {
	private String userid;
	private String pwd;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		UserDAO udao = new UserDAOImpl();
		VUser loginUser = (VUser)session.getAttribute("loginUser");
		udao.modifyPwd(loginUser.getUserid(), pwd);
		
		boolean usereitd=	udao.modifyPwd(userid, pwd);
		if (usereitd == true) {
			
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}