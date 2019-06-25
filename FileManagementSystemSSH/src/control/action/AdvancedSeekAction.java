package control.action;

import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import Util.Expression;
import business.dao.AdvancedSeekDAO;
import business.factory.DAOFactorys;
import business.impl.AdvancedSeekDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @Title: ownfileAction.java
 * @Package control.action
 * @Description: TODO(高级搜索文件（组合查询）,advancedSeek.jsp)
 * @author ZDZ
 * @date 2019年5月30日 下午6:25:49
 * @version V1.0
 */

public class AdvancedSeekAction extends BaseAction {	
	
	private String userid;
	private int f_department_id;
	
	public String getUserid() {
		return userid;
	}

	public int getF_department_id() {
		return f_department_id;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setF_department_id(int f_department_id) {
		this.f_department_id = f_department_id;
	}

	
	/**
	 * @return
	 */
	@SuppressWarnings("unused")/*表示该属性在方法或类中没有使用。添加此注解可以去除属性上的黄色警告*/
	public String execute() {
		String filename = request.getParameter("filename");//得到搜索框中的内容,文件标题
		String dscribe = request.getParameter("dscribe");//得到搜索框中的内容,文件详细说明
		String lable = request.getParameter("lable");//得到搜索框中的内容,文件标签
		String beginTime = request.getParameter("beginTime");//得到搜索框中的内容,开始时间
		String endTime = request.getParameter("endTime");//得到搜索框中的内容,结束时间
				
		Expression exp = new Expression();
		
		if (filename != null && !filename.equals("")) {
			exp.andLike("filename", filename, String.class);
		}
		if (dscribe != null && !dscribe.equals("")) {
			exp.andLike("dscribe", dscribe, String.class);
		}
		if (lable != null && !lable.equals("")) {
			exp.andLike("lable", lable, String.class);
		}
		if (beginTime != null && !beginTime.equals("")) {
			exp.andBetween("uptime", beginTime, String.class);
		}
		if (endTime != null && !endTime.equals("")) {
			exp.andAnd(endTime, String.class);
		}
		
		VUser loginUser = (VUser)session.getAttribute("loginUser");//得到当前登录用户
		List<VUserFile> filelist = new ArrayList<VUserFile>() ;
		
		if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
				
		}
		else{//普通员工查询，通过文件分类和输入框来查询			
			filelist = DAOFactorys.getAdvancedSeekDAO().getadvancedseekList(userid,f_department_id,exp.toString());		
		}
				
		request.setAttribute("filelist", filelist);	

		if(filelist == null || filelist.size() == 0)
			return ERROR;
		else		
		//返回success 使用dispatch方式跳转到seek.jsp中
		return SUCCESS;
	}
}