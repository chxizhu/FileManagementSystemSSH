package control.action;

import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;

public class ReturnIndexAction extends BaseAction {

	private String userid;
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	/**
	 * @return
	 */
	public String execute() {

		VUser loginUser = (VUser)session.getAttribute("loginUser");//得到当前登录用户	
		
		/*在主页按下载次数展示*/
		List<VUserFile> showfilelist = new ArrayList<VUserFile>() ;
		int count=0;
		if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
			showfilelist = DAOFactorys.getFileDAO().leaddownloadsslectallfile(loginUser.getUserid());
			    count = DAOFactorys.getFileDAO().leadcountslectallfile(loginUser.getUserid());
			    if(count > 7){
                    count = 7;
				 }
			}
			else{//普通员工查询，	
				showfilelist = DAOFactorys.getFileDAO().staffdownloadsslectallfile(loginUser.getUserid(),loginUser.getDepartmentid());				
				 count = DAOFactorys.getFileDAO().staffcountslectallfile(loginUser.getUserid(), loginUser.getDepartmentid());
				 if(count > 7){
                      count = 7;
				 }
			}				
		request.setAttribute("showfilelist", showfilelist);
		request.setAttribute("count", count);
		
		return SUCCESS;
		
	}
}