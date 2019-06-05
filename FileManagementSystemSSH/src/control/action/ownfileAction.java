package control.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.components.Bean;

import model.VFile;
import model.VUser;
import business.dao.FileDAO;
import business.factory.DAOFactorys;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
* @Title: ownfileAction.java
* @Package control.action
* @Description: TODO(个人文件数据表格数据查询)
* @author 成锡柱
* @date 2019年5月30日 下午6:25:49
* @version V1.0
 */
public class ownfileAction extends BaseAction {
	
	private int page;
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

	private int limit; //每页条数
	
	/**
	 * @return
	 * @throws IOException 
	 */
	public String execute() throws IOException {
		
		HttpSession session = request.getSession();
		VUser loginUser = (VUser) session.getAttribute("loginUser");
		
		FileDAO udao = DAOFactorys.getFileDAO();
		
		List<VFile> list=udao.getForumListByPage(loginUser.getUserid(), page, limit); //当前登录用户文件分页展示列表
		List<VFile> num = udao.selectfilesum(loginUser.getUserid());     //得到当前用户文件总数
		

		//返回json格式数据
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
	
		Util.ReturnData rd = new Util.ReturnData();
		rd.code = Util.ReturnData.SUCCESS;
		rd.msg = "";
		rd.count=num.size();
		rd.data = list;
		out.write(JSON.toJSONString(rd));
		
		out.flush();
		out.close();
		return null;
	}
}