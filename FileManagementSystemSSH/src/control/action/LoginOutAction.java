package control.action;

public class LoginOutAction extends BaseAction {	

	/**
	 * @return
	 */
	public String execute() {		
		session.removeAttribute("loginUser");
		return SUCCESS;
	}
}