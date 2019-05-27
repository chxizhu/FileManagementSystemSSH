package control.action;

import java.text.MessageFormat;
import java.util.List;

import model.VUserFile;
import business.factory.DAOFactorys;


public class SeekAction extends BaseAction {

	/**
	 * @return
	 */
	public String execute() {
		
		String filekeyword = request.getParameter("filekeyword");
		session.setAttribute("filekeyword", filekeyword);
		//String str = MessageFormat.format("userid {0} or username {0} or filename {0} or dscribe {0} or lable {0} or filesize {0} or filesuffix {0} ","like '%"+filekeyword+"%'");
		
		List<VUserFile> filelist = DAOFactorys.getFileDAO().slectallfile(filekeyword);
		
		for(VUserFile i: filelist){
			i.getFileid();
			System.out.println(i.getFileid());
		}
		
		System.out.println("filelist :" + filelist);
		request.setAttribute("filelist", filelist);
		if(filelist == null || filelist.size() == 0)
			return ERROR;
		else		
		//返回success 使用dispatch方式跳转到seek.jsp中
		return SUCCESS;
	}
}