package control.action;

import java.util.List;

import model.TFile;
import model.VUserFile;
import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class downloadAction extends BaseAction {
	private int fileid;
	
	private String title;
	private String date;
	private String author;
	private String path;
	private String type;
	private String authority;
	private String labe;
	
	
	

	public String getTitle() {
		return title;
	}




	public void setTitle(String title) {
		this.title = title;
	}




	public String getDate() {
		return date;
	}




	public void setDate(String date) {
		this.date = date;
	}




	public String getAuthor() {
		return author;
	}




	public void setAuthor(String author) {
		this.author = author;
	}




	public String getPath() {
		return path;
	}




	public void setPath(String path) {
		this.path = path;
	}




	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}




	public String getAuthority() {
		return authority;
	}




	public void setAuthority(String authority) {
		this.authority = authority;
	}




	public String getLabe() {
		return labe;
	}




	public void setLabe(String labe) {
		this.labe = labe;
	}




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
	
		FileDAO udao = new FileDAOImpl();
		udao.slectallfileid(fileid);
		
		List<TFile> down=udao.slectallfileid(fileid);
		
		for (int i =0;i< down.size();i++){
	           title=down.get(i).getFilename();
	           
	        }
	
	System.out.println("测试"+down.size());
		
	System.out.println("id"+fileid);
		
		return SUCCESS;
	}
}