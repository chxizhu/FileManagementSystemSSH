package control.action;

import javax.servlet.http.HttpSession;

import model.VUser;
import business.impl.UserDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author xizhu
 *
 */
public class loginAction extends BaseAction {
	private String userid;
	private String pwd;

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

	/**
	 * @return
	 */
	public String execute() {
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

		/*
		 * else if(varify==null ||varify.trim().equals("")){
		 * errorsTest="验证码不能为空"; bakurl="login.jsp"; return ERROR; }else
		 * if(!varify.equals(srand)){ errorsTest="验证码不正确"; bakurl="login.jsp";
		 * return ERROR; }
		 */

		UserDAOImpl udao = new UserDAOImpl();
		VUser loginUser = udao.login(userid, pwd);
		if (loginUser != null && loginUser.getUserid() != null) {

			// 成功以后在 session中记录登录用户，跳转回主页
			session.setAttribute("loginUser", loginUser);
			return SUCCESS;
		} else {
			// 错误时跳转到 error.jsp页面 ，并传递 错误信息
			// errorsTest = "用户名或密码错误";
			// bakurl = "login.jsp";
			return ERROR;
		}
	}
}
