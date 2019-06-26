package business.dao;

import java.util.List;

import model.VUserFile;


/**
 * 
* @ClassName: AdvancedSeekDAO  
* @Description: TODO(文件操作接口)高级搜索文件（组合查询）
* @author zdz
* @date 2019年4月11日 上午10:00:11  
*
 */
public interface AdvancedSeekDAO {
	
	/**
	 * 普通员工根据条件高级搜索文件(组合查询)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @param condition 组合查询条件字符串,如："filename = '开会议程' and lable = '文档'" 
	 * @param int startPage  当前页
	 * @param int pageSize  一页几条数据
	 * @return List
	 */
	public List<VUserFile> categorygetadvancedseekList(String userid,int f_department_id,String condition);
	
	/**
	 * 普通员工根据条件高级搜索文件(组合查询)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @param condition 组合查询条件字符串,如："filename = '开会议程' and lable = '文档'" 
	 * @param int startPage  当前页
	 * @param int pageSize  一页几条数据
	 * @return List
	 */
	public List<VUserFile> getadvancedseekListByPage(String userid,int f_department_id,String condition,int startPage,int pageSize);
	
	/**
	 * 普通员工根据条件高级搜索文件(组合查询)总数
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @param condition 组合查询条件字符串,如："filename = '开会议程' and lable = '文档'" 
	 * @return List
	 */
	public int getadvancedseekListcount(String userid,int f_department_id,String condition);
	
	/**
	 * 领导模糊查询文件(可查询文件权限为个人，所有部门，公司的),高级查询
	 * @param String userid 当前用户
	 * @param String condition 文件搜索关键字
	 * @return  List<TFile>
	 */
	public List<VUserFile> leadgetadvancedseekList(String userid,String condition);	

}
