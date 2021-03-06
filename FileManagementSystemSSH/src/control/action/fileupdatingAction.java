package control.action;

import java.util.List;

import model.TFile;
import model.VFile;
import business.dao.FileDAO;
import business.impl.FileDAOImpl;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 
* @Title: fileupdatingAction.java
* @Package control.action
* @Description: TODO(文件信息修改)
* @author 成锡柱
* @date 2019年5月30日 下午4:45:47
* @version V1.0
 */
public class fileupdatingAction extends BaseAction {
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

		List<VFile> down = udao.slectallfileid(fileid);

		for (int i = 0; i < down.size(); i++) {
			title = down.get(i).getFilename();
			
			request.setAttribute("fileid", fileid);
			request.setAttribute("title", title);

			date = down.get(i).getUptime();		//得到文件上传时间
			request.setAttribute("date", date);

			author = down.get(i).getRolename();		//得到文件上传作者
			request.setAttribute("author", author);

			path = down.get(i).getFilepath();	//得到文件上传路径
			request.setAttribute("path", path);

			labe = down.get(i).getLable();		//得到文件标签
			request.setAttribute("labe", labe);

			authority = down.get(i).getDscribe();		//得到文件下载次数
			request.setAttribute("authority", authority);
		}

		return SUCCESS;
	}
}