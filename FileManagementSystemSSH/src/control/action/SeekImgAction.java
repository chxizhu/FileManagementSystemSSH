package control.action;

import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import business.factory.DAOFactorys;

import com.opensymphony.xwork2.ActionSupport;

public class SeekImgAction extends BaseAction {

	/**
	 * 
	 * @Title: SeekAction.java
	 * @Package control.action
	 * @Description: 通过输入框关键字模糊和文件分类来查询图片文件
	 * @author ZDZ
	 * @date 2019年5月23日 上午9:11:27
	 * @version V1.0
	 */
	
	private String userid;
	private int f_department_id;
	private int type_id;


	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

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
		String filekeyword = request.getParameter("filekeyword");//得到搜索框中的内容
		session.setAttribute("filekeyword", filekeyword);
		VUser loginUser = (VUser)session.getAttribute("loginUser");//得到当前登录用户
				
		List<VUserFile> filelist = new ArrayList<VUserFile>() ;
		
		if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
			if(filekeyword != null && (type_id == 1 || type_id == 2 || type_id == 3 || type_id == 4 || type_id == 5)){//通过分类和输入框关键字来查询			
				filelist = DAOFactorys.getFileDAO().leadcategoryslectallfile(userid, type_id, filekeyword);
			} else if(type_id == 6 && filekeyword == null){//领导查询全部文件
				filelist = DAOFactorys.getFileDAO().leadslectallfile(userid);
			}
			else{//通过输入框来查询		
				filelist = DAOFactorys.getFileDAO().leadslectallfile(userid, filekeyword);				
			}				
		}
		else{//普通员工查询，通过文件分类和输入框来查询
			if(filekeyword != null && (type_id == 1 || type_id == 2 || type_id == 3 || type_id == 4 || type_id == 5)){//通过分类和输入框关键字来查询	
				filelist = DAOFactorys.getFileDAO().categoryslectallfile(userid, f_department_id, type_id, filekeyword);					
			}else if(type_id == 6 && filekeyword == null){//普通员工查询全部文件
				filelist = DAOFactorys.getFileDAO().staffslectallfile(userid, f_department_id);
			}
			else{//通过输入框来查询					
					filelist = DAOFactorys.getFileDAO().slectallfile(userid,f_department_id,filekeyword);				
				}
			
		}
		request.setAttribute("filelist", filelist);			

		if(filelist == null || filelist.size() == 0)
			return ERROR;
		else		
		//返回success 使用dispatch方式跳转到seek.jsp中
		return SUCCESS;
	}
}