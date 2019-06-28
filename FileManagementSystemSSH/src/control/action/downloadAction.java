package control.action;

import java.util.List;

import model.TFile;
import model.VFile;
import model.VUserFile;
import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @Title: downloadAction.java
 * @Package control.action
 * @Description: 修改上传文件信息
 * @author ZDZ
 * @date 2019年5月23日 上午9:11:27
 * @version V1.0
 */

public class downloadAction extends BaseAction {

	private int fileid;
	private String title;
	private String date;
	private String author;
	private String path;
	private Integer type;
	private String authority;
	private String labe;
	private int downloads;

	public int getDownloads() {
		return downloads;
	}

	public void setDownloads(int downloads) {
		this.downloads = downloads;
	}

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

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
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

		List<VFile> down = udao.slectallfileid(fileid);

		for (int i = 0; i < down.size(); i++) {
			title = down.get(i).getFilename();

			request.setAttribute("title", title);

			date = down.get(i).getUptime();
			request.setAttribute("date", date);

			author = down.get(i).getUsername();
			request.setAttribute("author", author);

			path = down.get(i).getFilepath();
			request.setAttribute("path", path);

			labe = down.get(i).getLable();
			request.setAttribute("labe", labe);

			authority = down.get(i).getRolename();
			request.setAttribute("authority", authority);
			
			String Dscribe = down.get(i).getDscribe();
			request.setAttribute("Dscribe", Dscribe);
			
			String edit = down.get(i).getEdit();
			request.setAttribute("edit", edit);

			downloads = down.get(i).getDownloads();
			
			type = down.get(i).getTypeid();
			request.setAttribute("type", type);
			
			String filesuffix = down.get(i).getFilesuffix();
			request.setAttribute("filesuffix", filesuffix);
			

		}
		downloads = downloads + 1;
		udao.updatefiledowload(downloads, fileid);
		if (type != 7) {
			return ERROR;
		} else {

			return SUCCESS;

		}

	}
}