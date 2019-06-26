package control.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import Util.Expression;
import business.dao.AdvancedSeekDAO;
import business.factory.DAOFactorys;
import business.impl.AdvancedSeekDAOImpl;

import com.alibaba.fastjson.JSON;
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
	private int page;
	private int limit; //每页条数
	
	public int getPage() {
		return page;
	}

	public int getLimit() {
		return limit;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

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
	 * @throws IOException 
	 */
	@SuppressWarnings("unused")/*表示该属性在方法或类中没有使用。添加此注解可以去除属性上的黄色警告*/
	public String execute() throws IOException {
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
		int count = 0;//文件总数
		
		if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
			filelist = DAOFactorys.getAdvancedSeekDAO().leadgetadvancedseekList(userid,exp.toString());	
		}
		else{//普通员工查询，通过文件分类和输入框来查询			
			filelist = DAOFactorys.getAdvancedSeekDAO().categorygetadvancedseekList(userid,f_department_id,exp.toString());	
			/*count = DAOFactorys.getAdvancedSeekDAO().getadvancedseekListcount(userid,f_department_id,exp.toString());*/
		}
		/*System.out.println("filelist:"+ filelist);
		System.out.println("count:"+ count);*/
		request.setAttribute("filelist", filelist);
		//request.setAttribute("count", count);	

		if(filelist == null || filelist.size() == 0)
			return ERROR;
		else		
		//返回success 使用dispatch方式跳转到seek.jsp中
		return SUCCESS;
		
		//返回json格式数据
		/*response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
			
		Util.ReturnData rd = new Util.ReturnData();
		rd.code = Util.ReturnData.SUCCESS;
		rd.msg = "";
		rd.count=count;
		rd.data = filelist;
		out.write(JSON.toJSONString(rd));
				
		out.flush();
		out.close();
		return null;*/
	}
}