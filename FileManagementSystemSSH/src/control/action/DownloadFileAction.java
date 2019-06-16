package control.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import model.VUser;
import model.VUserFile;
import business.factory.DAOFactorys;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;


/**
 * 
 * @Title: ownfileAction.java
 * @Package control.action
 * @Description: TODO(文件下载数据表格数据查询)
 * @author ZDZ
 * @date 2019年5月30日 下午6:25:49
 * @version V1.0
 */
public class DownloadFileAction extends BaseAction {

	private int page;
	private int limit; // 每页条数
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}
	
	
	/**
	 * @return
	 * @throws IOException 
	 */
	public String execute() throws IOException {
		VUser loginUser = (VUser) session.getAttribute("loginUser");// 得到当前登录用户
		int count=0; //文件总数

		/* 在主页展示当前用户部门级文件 */
		List<VUserFile> showfilelist = new ArrayList<VUserFile>();

		if (loginUser.getRoleid() == 203) {// 判断当前登录用户是否为管理层领导，203位总经理管理层
			showfilelist = DAOFactorys.getFileDAO().leaddownloadsslectallfilebypage(loginUser.getUserid(),page, limit);// 查询文件下载数量列表
			count = DAOFactorys.getFileDAO().leaddownloadsslectallfilecount(loginUser.getUserid());//文件下载数量总数
			
		} else {// 普通员工查询，			
			showfilelist = DAOFactorys.getFileDAO().staffdownloadsslectallfilebypage(loginUser.getUserid(),loginUser.getDepartmentid(),page, limit);// 查询文件下载数量列表
			count = DAOFactorys.getFileDAO().staffdownloadsslectallfilecount(loginUser.getUserid(),loginUser.getDepartmentid());//文件下载数量总数
		}
		
		request.setAttribute("showfilelist", showfilelist);

		//返回json格式数据
				response.setCharacterEncoding("utf-8");
				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
			
				Util.ReturnData rd = new Util.ReturnData();
				rd.code = Util.ReturnData.SUCCESS;
				rd.msg = "";
				rd.count=count;
				rd.data = showfilelist;
				out.write(JSON.toJSONString(rd));
				
				out.flush();
				out.close();
				return null;
	}
}