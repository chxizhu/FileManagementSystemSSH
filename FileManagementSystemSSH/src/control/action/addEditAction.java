package control.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import model.TFile;
import model.VUser;
import Util.FileTypeUtil;
import business.dao.FileDAO;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 
* @Title: addEditAction.java
* @Package control.action
* @Description: TODO(文档在线编辑)
* @author 成锡柱
* @date 2019年6月29日 下午5:20:50
* @version V1.0
 */
public class addEditAction extends BaseAction {

	private String filename;
	private String dscribe;
	private int authority_id;
	private String lable;
	private String filesize;
	private String filesuffix;
	private String filepath;
	private String edit;
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getDscribe() {
		return dscribe;
	}
	public void setDscribe(String dscribe) {
		this.dscribe = dscribe;
	}
	public int getAuthority_id() {
		return authority_id;
	}
	public void setAuthority_id(int authority_id) {
		this.authority_id = authority_id;
	}
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	public String getFilesize() {
		return filesize;
	}
	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}
	public String getFilesuffix() {
		return filesuffix;
	}
	public void setFilesuffix(String filesuffix) {
		this.filesuffix = filesuffix;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getEdit() {
		return edit;
	}
	public void setEdit(String edit) {
		this.edit = edit;
	}
	/**
	 * @return
	 */
	public String execute() {
		// new Date()为获取当前系统时间
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
				String datetime = df.format(new Date());

					
				HttpSession session = request.getSession();
				VUser loginUser = (VUser) session.getAttribute("loginUser");

				TFile tFile = new TFile();
				tFile.setFilename(filename);
				tFile.setUptime(datetime);
				tFile.setAuthor(loginUser.getUserid());
				tFile.setTypeId(7);
				tFile.setDscribe(null);
				tFile.setAuthorityId(authority_id);// 文件权限
				tFile.setLable(lable);
				tFile.setFilesize("0");
				tFile.setFilesuffix(null);// 文件后缀
				tFile.setFilepath(null);// 文件路径
				tFile.setDownloads(0);
				tFile.setFDepartmentId(loginUser.getDepartmentid());
				tFile.setEdit(edit);
				
				FileDAO udao = DAOFactorys.getFileDAO();
				int returnNum = udao.addFile(tFile);
				return SUCCESS;
	}
}