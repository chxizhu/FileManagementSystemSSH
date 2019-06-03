package business.impl;

import java.sql.ResultSet;
import java.util.List;

import model.TAuthority;
import model.TFile;
import model.TFileType;
import model.VFile;
import model.VUserFile;
import business.basic.iHibBaseDAO;
import business.basic.iHibBaseDAOImpl;
import business.dao.FileDAO;

public class FileDAOImpl implements FileDAO {

	private iHibBaseDAO bdao = null;
	
	public void setBdao(iHibBaseDAO bdao) {
		this.bdao = bdao;
	}

	public FileDAOImpl() {
		bdao = new iHibBaseDAOImpl();
	}	
	
	@Override
	public int addFile(TFile file) {
		
		int a =(Integer) bdao.insert(file);
		return  a;
		
	}

	@Override
	public List<VFile> selectUserFile(String userid, String authority) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VFile> selectPublicFile(String authority) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VFile> selectClassifyfile(String typename) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override	
	public List<VUserFile> slectallfile(String userid,int f_department_id,String filekeyword) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103) and concat(o.userid,o.username,o.filename,o.dscribe,o.lable,o.filesize) like ? ";
		Object[] para = {userid,f_department_id,"%" + filekeyword + "%"};
		return bdao.select(hql, para);
	}
	
	@Override	
	public List<VUserFile> leadslectallfile(String userid,String filekeyword) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) and concat(o.userid,o.username,o.filename,o.dscribe,o.lable,o.filesize) like ? ";
		Object[] para = {userid,"%" + filekeyword + "%"};
		return bdao.select(hql, para);
	}
	
	@Override	
	public List<VUserFile> leadcategoryslectallfile(String userid,int type_id,String filekeyword) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) and type_id = ? and concat(o.userid,o.username,o.filename,o.dscribe,o.lable,o.filesize) like ? ";
		Object[] para = {userid,type_id,"%" + filekeyword + "%"};
		return bdao.select(hql, para);
	}
	
	@Override	
	public List<VUserFile> categoryslectallfile(String userid,int f_department_id,int type_id,String filekeyword) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103) and type_id = ? and concat(o.userid,o.username,o.filename,o.dscribe,o.lable,o.filesize) like ? ";
		Object[] para = {userid,f_department_id,type_id,"%" + filekeyword + "%"};
		return bdao.select(hql, para);
	}
	
	@Override	
	public List<VUserFile> staffslectallfile(String userid,int f_department_id) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103) order by uptime desc";
		Object[] para = {userid,f_department_id};
		return bdao.select(hql, para);
	}
	
	@Override	
	public List<VUserFile> leadslectallfile(String userid) {
		String hql =  "from VUserFile o where (userid = ? or authorityid = 102 or authorityid = 103) order by uptime desc";
		Object[] para = {userid};
		return bdao.select(hql, para);
	}
	
	@Override
	public List<TAuthority> getAuthority() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TFileType> getFileType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addFile(String filename, String author, String dscribe,
			int type_id, int authority_id, String lable, String filesize,
			String filesuffix, String filepath) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addFileTwo(String filename, String author, String dscribe,
			String type_id, String authority_id, String lable) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public List<VFile> getForumListByPage(String userid, int startPage,
			int pageSize) {
		String hql = "from VFile where userid = ? order by newid() ";
		Object[] para = { userid };
		return bdao.selectByPage(hql, para, startPage, pageSize);
	}

	@Override	
	public List<TFile> slectallfileid(int fileid) {
		String hql =  "from TFile where fileid = ?  ";
		Object[] para = {fileid};
		return bdao.select(hql, para);
	}

	@Override	
	public int deleteFile(int fileid) {
		String hql =  "delete from T_File where fileid=?  ";
		Object[] para = {fileid};
		
		if( bdao.delete(hql, para)==true){
			return 1;
		}else {
			return 0;
		}		
	}
	
	@Override	
	public List<VFile> selectfilesum(String userid){
		String hql =  "  from VFile WHERE userid = ?";
		Object[] para = {userid};
		return  bdao.select(hql, para);
			
		
	}
	
}
