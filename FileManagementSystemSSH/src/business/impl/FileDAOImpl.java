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
		return  (Integer) bdao.insert(file);
		
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
	/*public List<VUserFile> slectallfile(String filekeyword) {
		String sql = "select * from V_UserFile o where concat(o.userid,o.username,o.fileid,o.filename,o.dscribe,o.lable) like ? ";
		Object[] para = { "%" + filekeyword + "%" };
		return bdao.select(sql, para);
	
	}*/
	public List<VUserFile> slectallfile(String filekeyword) {
		String sql = "select * from V_UserFile where " + filekeyword;
		return bdao.select(sql);	
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
		String hql = "from VFile where userid = ? order by uptime";
		Object[] para = { userid };
		return bdao.selectByPage(hql, para, startPage, pageSize);
	}


}
