package business.dao;

import java.util.List;

import model.TAuthority;
import model.TFile;
import model.TFileType;
import model.VFile;
import model.VUserFile;
/**
 * 
* @ClassName: FileDAO  
* @Description: TODO(文件操作接口)  
* @author xizhu
* @date 2019年4月11日 上午10:00:11  
*
 */

public interface FileDAO {
	/**
	 * 单文件上传方法
	 * @param TFile file 文件内容对象
	 * @return  boolean  成功返回true 失败返回false
	 */
	public int addFile(TFile file);
	
	/**
	 * 
	 * 通过用户名、权限查询个人文件
	 * @param String userid 用户名
	 * @param String authority 文件权限
	 * @return List<TFile>
	 */
	public List<VFile> selectUserFile(String userid ,String authority);
	
	/**
	 * 通过权限查询公司的文件
	 * @param String authority
	 * @return  List<TFile>
	 */
	public List<VFile> selectPublicFile(String authority);
	
	/**
	 * 分类查询文件
	 * @param String typename 文件分类名称
	 * @return  List<TFile>结果集
	 */
	public List<VFile> selectClassifyfile(String typename);
	
	
	/**
	 * 普通员工模糊查询文件(可查询文件权限为个人，本部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @param String filekeyword 文件搜索关键字
	 * @return  List<TFile>
	 */
	public List<VUserFile> slectallfile(String userid,int f_department_id,String filekeyword);
	
	/**
	 * 领导模糊查询文件(可查询文件权限为个人，所有部门，公司的)
	 * @param String userid 当前用户
	 * @param String filekeyword 文件搜索关键字
	 * @return  List<TFile>
	 */
	public List<VUserFile> leadslectallfile(String userid,String filekeyword);	
	
	/**
	 * 领导按照文件分类和输入框关键字查询文件(可查询文件权限为个人，所有部门，公司的)
	 * @param String userid 当前用户
	 * @param int type_id 文件类型ID
	 * @param String filekeyword 文件搜索关键字
	 * @return  List<TFile>
	 */
	public List<VUserFile> leadcategoryslectallfile(String userid,int type_id,String filekeyword);
	
	/**
	 * 普通员工按照文件分类和输入框关键字查询文件(可查询文件权限为个人，本部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @param String filekeyword 文件搜索关键字
	 * @param int typeid 文件类型ID
	 * @return  List<TFile>
	 */
	public List<VUserFile> categoryslectallfile(String userid,int f_department_id,int type_id,String filekeyword);
	
	/**
	 * 普通员工（staff）按照时间降序查询所有文件(可查询文件权限为个人，本部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public List<VUserFile> staffslectallfile(String userid,int f_department_id);
	
	/**
	 * 领导按照时间降序查询所有文件(可查询文件权限为个人，所有部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public List<VUserFile> leadslectallfile(String userid);	
	
	/**
	 * 普通员工（staff）按照下载次数降序查询文件(可查询文件权限为个人，本部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public List<VUserFile> staffdownloadsslectallfile(String userid,int f_department_id);

	/**
	 * 领导按照文件下载次数降序查询所有文件(可查询文件权限为个人，所有部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public List<VUserFile> leaddownloadsslectallfile(String userid);	
	
	/**
	 * 普通员工（staff）可查询文件总数(可查询文件权限为个人，本部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public int staffcountslectallfile(String userid,int f_department_id);
	
	/**
	 * 领导可查询文件总数(可查询文件权限为个人，所有部门，公司的)
	 * @param String userid 当前用户
	 * @param int f_department_id  文件所属部门ID
	 * @return  List<TFile>
	 */
	public int leadcountslectallfile(String userid);	
	
	/**
	 * 根据文件权限查询权限名称
	 * @return  List<TFileType>
	 */
	public List<TAuthority> getAuthority();
	
	/**
	 * 根据文件类型查询类型名称
	 * @return  List<TFileType>
	 */
	public List<TFileType> getFileType();
	
	/**
	 * 文件上传到文件表(包括文件标题，上传作者，详细说明等)
	 * @param filename  文件标题
	 * @param author  上传作者
	 * @param dscribe  详细说明
	 * @param type_id 文件类型
	 * @return  authority_id  文件权限
	 * * @return  lable  标签
	 * * @return  filesize  文件大小
	 * * @return  filesuffix  文件后缀
	 * * @return  filepath  文档路径
	 */
	public boolean addFile(String filename,String author,String dscribe,int type_id,int authority_id,String lable,String filesize,String filesuffix,String filepath);
	
	/**
	 * 文件上传到文件表(包括文件标题，上传作者，详细说明等)
	 * @param filename  文件标题
	 * @param author  上传作者
	 * @param dscribe  详细说明
	 * @param type_id 文件类型
	 * @return  authority_id  文件权限
	 * * @return  lable  标签
	 * * @return  filesize  文件大小
	 * * @return  filesuffix  文件后缀
	 * * @return  filepath  文档路径
	 */
	public boolean addFileTwo(String filename,String author,String dscribe,String type_id,String authority_id,String lable);
	
	/**
	 * 获得指定用户发表的文件对象列表
	 * @param 用户编号，当前页，每页最大数量
	 * @return 文件信息对象列表
	 */
	
	public List<VFile> getForumListByPage(String userid,int startPage, int pageSize);
	
	/**
	 * 通过文件id查询文件内容
	 * * @param String fileid 文件用户
	 * @return  List<TFile>
	 */
	public List<TFile> slectallfileid(int fileid);
	
	/**
	 * 单文件删除方法
	 * @param TFile file 文件内容对象
	 * @return  boolean  成功返回true 失败返回false
	 */
	public int deleteFile(int fileid);
	
	/**
	 * 统计用户文件总数
	 * @param int  文件内容对象
	 * @return  boolean  成功返回true 失败返回false
	 */
	public List<VFile> selectfilesum(String userid);
	
	/**
	 * 文件下载修改
	 * @param int  文件内容对象
	 * @return  boolean  成功返回true 失败返回false
	 */
	public boolean updatefiledowload(int fileid,int bdownloads );
	
}
