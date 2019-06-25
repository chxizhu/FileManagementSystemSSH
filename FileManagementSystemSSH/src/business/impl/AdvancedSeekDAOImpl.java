package business.impl;

import java.util.List;

import model.VUserFile;
import business.basic.iHibBaseDAO;
import business.basic.iHibBaseDAOImpl;
import business.dao.AdvancedSeekDAO;

public class AdvancedSeekDAOImpl implements AdvancedSeekDAO {

private iHibBaseDAO bdao = null;
	
	public void setBdao(iHibBaseDAO bdao) {
		this.bdao = bdao;
	}

	public AdvancedSeekDAOImpl() {
		bdao = new iHibBaseDAOImpl();
	}	
	
	
	@Override
	public List<VUserFile> getadvancedseekList(String userid,int f_department_id,String condition) {
		String sql = "and (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103)";
		String hql = "from VUserFile";
		Object[] para = {userid,f_department_id};
		if(condition!=null && !condition.equals("")){
			hql += (condition + sql);
		}
		return bdao.select(hql,para); 
	}

}
