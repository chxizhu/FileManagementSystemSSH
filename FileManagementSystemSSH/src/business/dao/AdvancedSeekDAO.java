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
	 * @return List
	 */
	public List<VUserFile> getadvancedseekList(String userid,int f_department_id,String condition);

}
