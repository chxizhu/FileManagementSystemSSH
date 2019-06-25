package business.factory;

import business.dao.AdvancedSeekDAO;
import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.AdvancedSeekDAOImpl;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

public class DAOFactorys {

	/**
	 * 得到一个用于管理员业务操作的UserDAO实现类对象
	 * @return UserDAO
	 */
	public static UserDAO getUserDAO() {
		return new UserDAOImpl();
	}

	/**
	 * 得到一个用于管理员业务操作的FileDAO实现类对象
	 * @return FileDAO
	 */
	public static FileDAO getFileDAO() {
		return new FileDAOImpl();
	}
	
	/**
	 * 得到一个用于管理员业务操作的AdvancedSeekDAO实现类对象
	 * @return AdvancedSeekDAO
	 */
	public static AdvancedSeekDAO getAdvancedSeekDAO() {
		return new AdvancedSeekDAOImpl();
	}
}
