package control.action;

import business.dao.FileDAO;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;

public class deleteownfileAction extends ActionSupport {

	private int fileid;	

	public void setFileid(int fileid) {
		this.fileid = fileid;
	}

	/**
	 * @return
	 */
	public String execute() {
		FileDAO udao = DAOFactorys.getFileDAO();
		int returnNum = udao.deleteFile(fileid);
		return SUCCESS;
	}
}