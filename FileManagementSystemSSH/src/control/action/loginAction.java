package control.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import model.VUser;
import model.VUserFile;
import business.factory.DAOFactorys;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
* @Title: loginAction.java
* @Package control.action
* @Description: TODO(登录验证action)
* @author 成锡柱
* @date 2019年5月29日 下午8:20:37
* @version V1.0
 */
public class loginAction extends BaseAction {
	private String userid;
	private String pwd;
    private String varify;
    
	private int f_department_id;
    
	public String getVarify() {
		return varify;
	}

	public void setVarify(String varify) {
		this.varify = varify;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public int getF_department_id() {
		return f_department_id;
	}

	public void setF_department_id(int f_department_id) {
		this.f_department_id = f_department_id;
	}

	/**
	 * @return
	 */
	public String execute() {
		String errorsTest;
		HttpSession session = request.getSession();
		String srand = (String) session.getAttribute("rand");
						
		// 数据校验
		if (userid == null || userid.trim().equals("")) {
			// errorsTest = "用户名不能为空";
			// bakurl = "login.jsp";
			return ERROR;
		} else if (pwd == null || pwd.trim().equals("")) {
			// errorsTest = "登录密码不能为空";
			// bakurl = "login.jsp";
			return ERROR;
		}

		// else if(varify==null ||varify.trim().equals("")){
		// errorsTest="验证码不能为空"; bakurl="login.jsp"; return ERROR; }else
		if (!varify.equals(srand)) {
			 errorsTest = "验证码不正确,请重新输入";
			request.setAttribute("errorsTest", errorsTest );
			request.setAttribute("userid", userid );
			request.setAttribute("pwd", pwd );
			return ERROR;
		}

		UserDAOImpl udao = new UserDAOImpl();
		VUser loginUser = udao.login(userid, pwd);
		if (loginUser != null && loginUser.getUserid() != null) {

			// 成功以后在 session中记录登录用户，跳转回主页
			session.setAttribute("loginUser", loginUser);
			
			/*在主页按下载次数展示*/
			List<VUserFile> showfilelist = new ArrayList<VUserFile>() ;
			int count=0;
			if(loginUser.getRoleid() == 203){//判断当前登录用户是否为管理层领导，203位总经理管理层
				showfilelist = DAOFactorys.getFileDAO().leaddownloadsslectallfile(userid);
				    count = DAOFactorys.getFileDAO().leadcountslectallfile(userid);
				    if(count > 4){
                        count = 4;
					 }
				}
				else{//普通员工查询，	
					showfilelist = DAOFactorys.getFileDAO().staffdownloadsslectallfile(userid, loginUser.getDepartmentid());
					 count = DAOFactorys.getFileDAO().staffcountslectallfile(userid, loginUser.getDepartmentid());
					 if(count > 4){
                          count = 4;
					 }
				}				
			request.setAttribute("showfilelist", showfilelist);
			request.setAttribute("count", count);
			
			return SUCCESS;
		} else {
			 errorsTest = "用户名或密码不正确，请重新输入";
				request.setAttribute("errorsTest", errorsTest );
				request.setAttribute("userid", userid );
				request.setAttribute("pwd", pwd );
			return ERROR;
		}
						
		
	}
}
