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


	private int limit;
	

	/**
	 * @return
	 * @throws IOException 
	 */
	public String execute() throws IOException {
		
		HttpSession session = request.getSession();
		VUser loginUser = (VUser) session.getAttribute("loginUser");
		
		System.out.println("页数"+page+limit);
		FileDAO udao = DAOFactorys.getFileDAO();
		
		List<VFile> list=udao.getForumListByPage(loginUser.getUserid(), page, limit);

		for (VFile b : list) {
            System.out.println(b.getFilename() + "|" + b.getFileid());
        }
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
	
		Util.ReturnData rd = new Util.ReturnData();
		rd.code = Util.ReturnData.SUCCESS;
		rd.msg = "";
		rd.count="8";
		rd.data = list;
		out.write(JSON.toJSONString(rd));
		
		out.flush();
		out.close();
		return null;
	}
}