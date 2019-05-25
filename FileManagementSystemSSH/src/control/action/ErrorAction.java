package control.action;

public class ErrorAction extends BaseAction {

	/**
	 * @return
	 */
	public String execute() {
		
		String filekeyword = request.getParameter("filekeyword");//得到首页输入框的内容
		
		return SUCCESS;
	}
}