package control.action;

import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import business.factory.DAOFactorys;

public class ErrorAction extends BaseAction {

	private String userid;
	private int f_department_id;
	

	public int getF_department_id() {
		return f_department_id;
	}

	public void setF_department_id(int f_department_id) {
		this.f_department_id = f_department_id;
	}

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
		
		String filekeyword = request.getParameter("filekeyword");//得到首页输入框的内容
		
		VUser loginUser = (VUser)session.getAttribute("loginUser");//得到当前登录用户
		
		List<VUserFile> filelist = new ArrayList<VUserFile>() ;
		
		if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
                filelist = DAOFactorys.getFileDAO().leadslectallfile(filekeyword, filekeyword);
				request.setAttribute("filelist", filelist);	
			}else{
				 filelist = DAOFactorys.getFileDAO().slectallfile(userid,f_department_id,filekeyword);	
				 request.setAttribute("filelist", filelist);					
		}		

		if(filelist == null || filelist.size() == 0)
			return ERROR;
		else		
		//返回success 使用dispatch方式跳转到seek.jsp中
		return SUCCESS;	

	}
	
}