package control.action;

import javax.servlet.http.HttpSession;

import model.VUser;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @Title: addfileAction.java
 * @Package control.action
 * @Description: 单的文件上传的action
 * @author 成锡柱
 * @date 2019年5月23日 上午9:11:27
 * @version V1.0
 */
public class addfileAction extends BaseAction {

	private String filename;
	private String dscribe;
	private String authority_id;
	private String lable;
	private String filesize;
	private String filesuffix;
	private String filepath;

	public String getFilename() {
		return filename;
	}

	public String getDscribe() {
		return dscribe;
	}

	public String getAuthority_id() {
		return authority_id;
	}

	public String getLable() {
		return lable;
	}

	public String getFilesize() {
		return filesize;
	}

	public String getFilesuffix() {
		return filesuffix;
	}

	public String getFilepath() {
		return filepath;
	}

	/**
	 * @return
	 */
	public String execute() {
		HttpSession session = request.getSession();
		VUser loginUser = (VUser) session.getAttribute("loginUser");
		System.out.println(loginUser.getUserid());
		return SUCCESS;
	}
}