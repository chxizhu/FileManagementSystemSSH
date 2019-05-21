package business.dao;

import java.util.List;






import model.TUser;
import model.TUser;
import model.VUser;

/**
 * 企业文件资源管理系统用户业务接口
 * @author cya
 * @since 2019-4-10
 */
public interface UserDAO {
	/**
	 * 用户登录业务方法
	 * @param userid   用户登录名
	 * @param pwd   登录密码
	 * @return  TUser  当前登录的用户对象
	 */
	public TUser login(String userid,String pwd);
	/**
	 * 修改密码
	 * @param userid  要修改的用户的用户名
	 * @param pwd  修改后的密码
	 * @return 修改成功返回true 失败返回false
	 */
	public boolean modifyPwd(String userid,String pwd); 
	/**
	 * 普通用户的注册方法
	 * @param userid  用户注册的用户名
	 * @param pwd  用户注册录密码的的
	 * @param username  用户注册的名字
	 * @param agend 用户的年龄
	 * @param phone 用户的电话
	 * @param role_name 用户的权限
	 * @param department_id 用户所属的部门
	 * @return  boolean  注册成功返回true 失败返回false
	 */
	public boolean addNormalUser(String userid,String pwd,String username,String agend,String phone,int role_name,int department_id);

	/**
	 * 修改普通用户信息
	 * @param userid  要修改的用户的用户名
	 * @param pwd  用户注册录密码的的
	 * @param username  用户注册的名字
	 * @param agend 用户的年龄
	 * @param phone 用户的电话
	 * @param department_id 用户所属的部门
	 * @return 修改成功返回true 失败返回false
	 */
	public boolean modifyNormalUser(String userid,String pwd,String username,String agend,String phone,int department_id); 

	
	
	
	
	/**
	 * 按发表文章数量倒序排序，返回所有用户信息
	 * @return List<TUser> 返回存储任意多个TUser对象的List数组
	 */
	public List<TUser> getAllBolgeruserByHot();

	/**
	 * 根据用户输入的用户名返回对应的TUser对象
	 * @param userid 用户名
	 * @return TUser对象
	 */
	public TUser getTUserById(String userid);
	
	/**
	 * 根据用户输入的用户名返回对应的TUser对象
	 * @param userid 用户名
	 * @return TUser对象
	 */
	public VUser getVUserById(String userid);
	
	/**
	 * 判断注册用户名是否可用
	 * @param userid
	 * @return 用户名可用返回true， 否则返回false
	 */
	public boolean isValidateUserid(String userid);
	
	/**
	 * 停用一个用户账号
	 * @param userid   要停用的用户账号
	 * @return
	 */
	public boolean disableUser(String userid);
}
