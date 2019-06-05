package control.action;

import model.TUser;
import model.VUser;
import business.dao.UserDAO;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

import freemarker.core.ReturnInstruction.Return;

/**
 * 
 * @Title: UserinformationEditAction.java
 * @Package control.action
 * @Description: 修改用户信息
 * @author ZDZ
 * @date 2019年5月23日 上午9:11:27
 * @version V1.0
 */

public class UserinformationEditAction extends BaseAction {
	
	private String userid;
	private String pwd;
	private String username;
	private String agend;
	private String phone;
	private int department_id;
	
	
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAgend() {
		return agend;
	}

	public void setAgend(String agend) {
		this.agend = agend;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}

	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		UserDAO udao = new UserDAOImpl();
		VUser loginUser = (VUser)session.getAttribute("loginUser");
		udao.modifyNormalUser(loginUser.getUserid(), username,agend, phone, department_id);   //通过当前用户ID修改用户信息
		
		boolean usereitd = udao.modifyNormalUser(loginUser.getUserid(),username, agend, phone, department_id); //通过当前用户ID来判断是否修改成功
		if (usereitd == true) {			
			return SUCCESS;
		} else {
			return ERROR;
		}
		
	}
	
	
	
	
}