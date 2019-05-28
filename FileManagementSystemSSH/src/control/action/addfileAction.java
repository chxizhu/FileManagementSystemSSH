package control.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import model.TFile;
import model.VUser;
import Util.FileTypeUtil;
import business.dao.FileDAO;
import business.dao.UserDAO;
import business.factory.DAOFactorys;
import business.impl.FileDAOImpl;

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
	private int authority_id;
	private String lable;
	private String filesize;
	private String filesuffix;
	private String filepath;

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public void setDscribe(String dscribe) {
		this.dscribe = dscribe;
	}

	public void setAuthority_id(int authority_id) {
		this.authority_id = authority_id;
	}

	public void setLable(String lable) {
		this.lable = lable;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public void setFilesuffix(String filesuffix) {
		this.filesuffix = filesuffix;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	/**
	 * author: itmyhome
	 */

	/**
	 * @return
	 */
	public String execute() {
		// new Date()为获取当前系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		String datetime = df.format(new Date());
		// System.out.println(df.format(new Date()));

		// 通过文件名获取文件后缀
		File file = new File(filename);
		String fileName = file.getName();
		String filesuffix = fileName.substring(fileName.lastIndexOf(".") + 1);
		// System.out.println(filesuffix);
		
		//通过文件名获取文件类型返回int
		int TypeId=FileTypeUtil.getType(fileName);
		//System.out.println(FileTypeUtil.getType(fileName));
		
		
		HttpSession session = request.getSession();
		VUser loginUser = (VUser) session.getAttribute("loginUser");

		TFile tFile = new TFile();
		tFile.setFilename(filename);
		
		//tFile.setUptime(datetime);
		tFile.setAuthor(loginUser.getUserid());
		tFile.setTypeId(TypeId);
		tFile.setDscribe(dscribe);
		tFile.setAuthorityId(authority_id);// 文件权限
		tFile.setLable(lable);
		tFile.setFilesize(filesize);
		tFile.setFilesuffix(filesuffix);// 文件后缀
		tFile.setFilepath(filename);// 文件路径
		tFile.setFDepartmentId(301);
		FileDAO udao = DAOFactorys.getFileDAO();
		int returnNum = udao.addFile(tFile);
		return SUCCESS;
	}
}