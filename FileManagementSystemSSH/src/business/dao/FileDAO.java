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
	 * 模糊查询文件
	 * @param String filekeyword 文件搜索关键字
	 * @return  List<TFile>
	 */
	public List<VUserFile> slectallfile(String filekeyword);
	
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
	
}
