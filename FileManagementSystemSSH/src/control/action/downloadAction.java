package control.action;

import com.opensymphony.xwork2.ActionSupport;

public class downloadAction extends BaseAction {
	private int fileid;
	

	

	public int getFileid() {
		return fileid;
	}




	public void setFileid(int fileid) {
		this.fileid = fileid;
	}




	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		
		System.out.println("id"+fileid);
		System.out.println("嘿嘿嘿嘿");
		return SUCCESS;
	}
}