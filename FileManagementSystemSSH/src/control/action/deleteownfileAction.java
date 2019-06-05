package control.action;

import business.dao.FileDAO;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;

public class deleteownfileAction extends ActionSupport {

	/**
	 * 
	 * @Title: deleteownfileAction.java
	 * @Package control.action
	 * @Description: 删除个人文件，单文件删除
	 * @author ZDZ
	 * @date 2019年5月23日 上午9:11:27
	 * @version V1.0
	 */
	
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