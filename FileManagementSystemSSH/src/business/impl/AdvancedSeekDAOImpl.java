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
	public List<VUserFile> categorygetadvancedseekList(String userid,int f_department_id,String condition) {
		String statement = "and (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103)";
		String hql = "from VUserFile";
		Object[] para = {userid,f_department_id};
		
		if(condition!=null && !condition.equals("")){
			hql += (condition + statement);
		}
		return bdao.select(hql,para);
		
	}
	
	@Override
	public List<VUserFile> getadvancedseekListByPage(String userid,int f_department_id,String condition,int startPage,int pageSize) {
		String statement = "and (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103)";
		String hql = "from VUserFile";
		Object[] para = {userid,f_department_id};
		
		if(condition!=null && !condition.equals("")){
			hql += (condition + statement);
			System.out.println( hql+ "+"+para+ "+"+startPage+ "+"+pageSize);
		}
		return bdao.selectByPage(hql,para,startPage,pageSize);
		
	}
	
	@Override
	public int getadvancedseekListcount(String userid,int f_department_id,String condition) {
		String statement = "and (userid = ? or authorityid = 102 or authorityid = 103) and (f_department_id = ? or authorityid = 103)";
		String hql = "select count(*) from VUserFile";
		Object[] para = {userid,f_department_id};
		if(condition!=null && !condition.equals("")){
			hql += (condition + statement);
		}
		return bdao.selectValue(hql, para); 
	}
	
	@Override	
	public List<VUserFile> leadgetadvancedseekList(String userid,String condition) {		
		String statement =  "and (userid = ? or authorityid = 102 or authorityid = 103)";
		String hql = "from VUserFile";
		Object[] para = {userid};
		if(condition!=null && !condition.equals("")){
			hql += (condition + statement);
		}
		return bdao.select(hql, para); 
	}

}
