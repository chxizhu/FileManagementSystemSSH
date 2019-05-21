package business.dao;

import java.util.List;






import model.TUser;
import model.TUser;
import model.VUser;

/**
 * ��ҵ�ļ���Դ����ϵͳ�û�ҵ��ӿ�
 * @author cya
 * @since 2019-4-10
 */
public interface UserDAO {
	/**
	 * �û���¼ҵ�񷽷�
	 * @param userid   �û���¼��
	 * @param pwd   ��¼����
	 * @return  TUser  ��ǰ��¼���û�����
	 */
	public TUser login(String userid,String pwd);
	/**
	 * �޸�����
	 * @param userid  Ҫ�޸ĵ��û����û���
	 * @param pwd  �޸ĺ������
	 * @return �޸ĳɹ�����true ʧ�ܷ���false
	 */
	public boolean modifyPwd(String userid,String pwd); 
	/**
	 * ��ͨ�û���ע�᷽��
	 * @param userid  �û�ע����û���
	 * @param pwd  �û�ע��¼����ĵ�
	 * @param username  �û�ע�������
	 * @param agend �û�������
	 * @param phone �û��ĵ绰
	 * @param role_name �û���Ȩ��
	 * @param department_id �û������Ĳ���
	 * @return  boolean  ע��ɹ�����true ʧ�ܷ���false
	 */
	public boolean addNormalUser(String userid,String pwd,String username,String agend,String phone,int role_name,int department_id);

	/**
	 * �޸���ͨ�û���Ϣ
	 * @param userid  Ҫ�޸ĵ��û����û���
	 * @param pwd  �û�ע��¼����ĵ�
	 * @param username  �û�ע�������
	 * @param agend �û�������
	 * @param phone �û��ĵ绰
	 * @param department_id �û������Ĳ���
	 * @return �޸ĳɹ�����true ʧ�ܷ���false
	 */
	public boolean modifyNormalUser(String userid,String pwd,String username,String agend,String phone,int department_id); 

	
	
	
	
	/**
	 * ���������������������򣬷��������û���Ϣ
	 * @return List<TUser> ���ش洢������TUser�����List����
	 */
	public List<TUser> getAllBolgeruserByHot();

	/**
	 * �����û�������û������ض�Ӧ��TUser����
	 * @param userid �û���
	 * @return TUser����
	 */
	public TUser getTUserById(String userid);
	
	/**
	 * �����û�������û������ض�Ӧ��TUser����
	 * @param userid �û���
	 * @return TUser����
	 */
	public VUser getVUserById(String userid);
	
	/**
	 * �ж�ע���û����Ƿ����
	 * @param userid
	 * @return �û������÷���true�� ���򷵻�false
	 */
	public boolean isValidateUserid(String userid);
	
	/**
	 * ͣ��һ���û��˺�
	 * @param userid   Ҫͣ�õ��û��˺�
	 * @return
	 */
	public boolean disableUser(String userid);
}
