package control.action;

import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

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
		FileDAO udao = new FileDAOImpl();
		udao.slectallfileid(fileid);
		
		
		//System.out.println("id"+fileid);
		
		return SUCCESS;
	}
}