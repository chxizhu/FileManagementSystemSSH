package control.action;

import java.util.List;

import model.VFile;
import business.factory.DAOFactorys;


public class SeekAction extends BaseAction {

	/**
	 * @return
	 */
	public String execute() {
		
		String seek = request.getParameter("seek");
		List<VFile> filelist = DAOFactorys.getFileDAO().slectallfile(seek);
		
		request.setAttribute("filelist", filelist);
		
		return SUCCESS;
	}
}