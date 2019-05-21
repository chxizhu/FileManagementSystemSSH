package business.impl;

import java.util.List;

import model.TUser;
import model.VUser;
import business.basic.iHibBaseDAO;
import business.basic.iHibBaseDAOImpl;
import business.dao.UserDAO;

public class UserDAOImpl implements UserDAO {
	
	private iHibBaseDAO bdao = null;
	
	public void setBdao(iHibBaseDAO bdao) {
		this.bdao = bdao;
	}

	public UserDAOImpl() {
		bdao = new iHibBaseDAOImpl();
	}
	
	@Override
	public TUser login(String userid, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modifyPwd(String userid, String pwd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addNormalUser(String userid, String pwd, String username,
			String agend, String phone, int role_name, int department_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyNormalUser(String userid, String pwd, String username,
			String agend, String phone, int department_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<TUser> getAllBolgeruserByHot() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TUser getTUserById(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public VUser getVUserById(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isValidateUserid(String userid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean disableUser(String userid) {
		// TODO Auto-generated method stub
		return false;
	}

}
