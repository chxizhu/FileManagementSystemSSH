package business.factory;

import business.dao.FileDAO;
import business.dao.UserDAO;
import business.impl.FileDAOImpl;
import business.impl.UserDAOImpl;

public class DAOFactorys {

	/**
	 * ����̬����������һ�����ڶ��û���Ϣ������UserDAO����
	 * 
	 * @return UserDAO
	 */
	public static UserDAO getUserDAO() {
		return new UserDAOImpl();
	}

	/**
	 * ����̬����������һ�����ڶ��ļ���Ϣ�������ļ�����
	 * 
	 * @return UserDAO
	 */
	public static FileDAO getFileDAO() {
		return new FileDAOImpl();
	}
}
