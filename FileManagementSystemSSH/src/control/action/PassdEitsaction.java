package control.action;

import model.VUser;
import business.dao.UserDAO;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @Title: PassdEitsaction.java
 * @Package control.action
 * @Description: 修改用户密码
 * @author ZDZ
 * @date 2019年5月23日 上午9:11:27
 * @version V1.0
 */

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
		udao.modifyPwd(loginUser.getUserid(), pwd); //修改用户密码
		
		boolean usereitd=	udao.modifyPwd(userid, pwd);
		if (usereitd == true) {
			
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}