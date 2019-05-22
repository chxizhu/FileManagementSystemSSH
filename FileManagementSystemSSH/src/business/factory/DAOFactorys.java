package business.factory;

import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

public class DAOFactorys {

	/**
	 * （静态方法）返回一个用于对用户信息操作的UserDAO对象
	 * 
	 * @return UserDAO
	 */
	public static UserDAO getUserDAO() {
		return new UserDAOImpl();
	}

	/**
	 * （静态方法）返回一个用于对文件信息操作的文件对象
	 * 
	 * @return UserDAO
	 */
	public static FileDAO getFileDAO() {
		return new FileDAOImpl();
	}
}
