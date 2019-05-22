package control.action;

import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport {
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
		
		return SUCCESS;
	}
}