package control.action;

/**
 * 
 * @Title: LoginOutAction.java
 * @Package control.action
 * @Description: 退出系统
 * @author ZDZ
 * @date 2019年5月23日 上午9:11:27
 * @version V1.0
 */

public class LoginOutAction extends BaseAction {	
	
	/**
	 * @return
	 */
	public String execute() {		
		session.removeAttribute("loginUser");
		return SUCCESS;
	}
}