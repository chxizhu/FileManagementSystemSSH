package control.action;

import business.dao.FileDAO;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 
* @Title: SavefileUpdatingAction.java
* @Package control.action
* @Description: TODO(实现文件修改)
* @author 成锡柱
* @date 2019年6月5日 上午8:50:29
* @version V1.0
 */
public class SavefileUpdatingAction extends ActionSupport {

	private String filename;
	private String authority_id;
	private String lable;
	private String dscribe;
	private String fileid;
	
	public String getFileid() {
		return fileid;
	}
	public void setFileid(String fileid) {
		this.fileid = fileid;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getAuthority_id() {
		return authority_id;
	}
	public void setAuthority_id(String authority_id) {
		this.authority_id = authority_id;
	}
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	public String getDscribe() {
		return dscribe;
	}
	public void setDscribe(String dscribe) {
		this.dscribe = dscribe;
	}
	/**
	 * @return
	 */
	public String execute() {
		// TODO Auto-generated method stub
		FileDAO udao = DAOFactorys.getFileDAO();
		//System.out.println("id"+fileid);
		boolean returnNum = udao.saveupdate(filename, authority_id, lable, dscribe, fileid);
		return SUCCESS;
	}
}