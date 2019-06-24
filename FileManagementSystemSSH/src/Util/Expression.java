package Util;


import java.io.UnsupportedEncodingException;
import java.sql.Date;

public class Expression {
	
	StringBuffer exp = new StringBuffer();
	int count=0;
	boolean leftbra = false; //�����ߵ�����
	boolean orderflag = false; //������ֱ�־
	boolean between = false;//���between and��between���ֵı�־
	
	/**
	 * �жϲ�����ʲô���ͣ�����ת��Ϊ��Ӧ������
	 * @param value ����
	 * @param valueClz ����
	 */
	public void appendValue(Object value,Class valueClz){
		
		Object paraValue="";
		/*
		try {
			paraValue = new String(value.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			paraValue = value;
			e.printStackTrace();
		}
		*/
		paraValue = value;
		if(valueClz == Integer.class){
			exp.append(paraValue + " ");
		}else if(valueClz == Long.class){
			exp.append(paraValue + " ");
		}else if(valueClz == String.class){
			exp.append("'" + paraValue + "' ");
		}else if(valueClz == Date.class){
			exp.append("'" + paraValue + "' ");
		}else if(valueClz == Double.class){
			exp.append(paraValue + " ");
		}else if(valueClz == Float.class){
			exp.append(paraValue + " ");
		}else if(valueClz == Boolean.class){
			exp.append(paraValue + " ");
		}
	}
	
	/**
	 * ���һ�����в��ң�and����ģ���ѯ���� �� where paraName like %paraValue% �� and paraName like %paraValue%
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andLike(String paraName,String paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" like ");
			appendValue("%"+paraValue+"%",valueClz);
		}
		else{
			exp.append(" and ");
			exp.append(paraName +" like ");
			appendValue("%"+paraValue+"%",valueClz);
		}
		count++;
	}
	
	/**
	 * ���һ��between and��between���֣����ø÷���֮��������andAnd������ where checktime between '2018-05-03' ��  and checktime between '2018-05-03'
	 * ��������磺where checktime between '2018-05-03' and '2018-05-03'
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andBetween(String paraName, String paraValue, Class valueClz){
		if(count <= 0){
			exp.append(" where ");
			exp.append(paraName + " between ");
			appendValue(paraValue, valueClz);
		}
		else {
			exp.append(" and ");
			exp.append(paraName + " between ");
			appendValue(paraValue, valueClz);
		}
		count++;
		between = true;
	}
	
	/**
	 * ���һ��between and��and���֣����ø÷���֮ǰ�����ȵ���andBetween��ʼ���� and '2018-05-03'
	 * ��������磺where checktime between '2018-05-03' and '2018-05-03'
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andAnd(String paraValue, Class valueClz){
		if (between) {
			exp.append(" and ");
			appendValue(paraValue, valueClz);
			count++;
		}	
	}
	
	/**
	 * ���һ�����в��ң�and�������ģ���ѯ��������"where (paraName like %paraValue%" ��  and "(paraName like %paraValue%"
	 * ���ø÷�����������andRightBraLike()��������
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andLeftBraLike(String paraName,String paraValue,Class valueClz){
		if(leftbra==false){
			if(count<=0){
				exp.append(" where ");
				exp.append("( " + paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" and ");
				exp.append("( " + paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
			leftbra = true;
		}else{
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" and ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
		}
	}
	
	/**
	 * ���һ�����в��ң�and�����ұ�ģ���ѯ��������"where paraName like %paraValue%" ��  and "paraName like %paraValue%)"
	 * ���ø÷���ǰ�����ȵ���andLeftBraLike()������ʼ
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andRightBraLike(String paraName,String paraValue,Class valueClz){
		if(leftbra == true){
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" and ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
				exp.append(" )");
			}
			count++;
			leftbra = false;
		}else{
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" and ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
		}
	
	}
	
	/**
	 * ���һ�����в��ң�and���ĵ�ֵ��ѯ���� �� where paraName = paraValue �� and paraName = paraValue
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andEqu(String paraName,Object paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" = ");
			appendValue(paraValue,valueClz);
		}
		else{
			exp.append(" and ");
			exp.append(paraName +" = ");
			appendValue(paraValue,valueClz);
		}
		count++;
	}
	
	/**
	 * ���һ�����в��ң�and���Ĳ��Ȳ�ѯ���� �� where paraName <> paraValue �� and paraName <> paraValue
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void andNotEqu(String paraName,Object paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" <> ");
			appendValue(paraValue,valueClz);
		}
		else{
			exp.append(" and ");
			exp.append(paraName +" <> ");
			appendValue(paraValue,valueClz);
		}
		count++;
	}
	
	/**
	 * ���һ��ģ����л��ߣ�or���Ĳ�ѯ������ �� where paraName like paraValue �� or paraName like paraValue
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void orLike(String paraName,String paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" like ");
			appendValue("%"+paraValue+"%",valueClz);
		}
		else{
			exp.append(" or ");
			exp.append(paraName +" like ");
			appendValue("%"+paraValue+"%",valueClz);
		}
		count++;
	}
	   
	/**
	 * ���һ�����л��ߣ�or�������ģ���ѯ����������"where (paraName like %paraValue%" ��  or "(paraName like %paraValue%"
	 * ���ø÷�����������andRightBraLike()��������
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void orLeftBraLike(String paraName,String paraValue,Class valueClz){
		if(leftbra == false){
			if(count<=0){
				exp.append(" where ");
				exp.append("( "+ paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" or ");
				exp.append("( " + paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
			leftbra = true;
		}else{
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" or ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
		}
	}
	
	/**
	 * ���һ�����л��ߣ�or�����ұ�ģ���ѯ����������"where paraName like %paraValue%)" ��  or "paraName like %paraValue%)"
	 * ���ø÷���ǰ�����ȵ���andLeftBraLike()������ʼ
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void orRightBraLike(String paraName,String paraValue,Class valueClz){
		if(leftbra == true){
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" or ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
				exp.append(" )");
			}
			count++;
			leftbra = false;
		}else{
			if(count<=0){
				exp.append(" where ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			else{
				exp.append(" or ");
				exp.append(paraName +" like ");
				appendValue("%"+paraValue+"%",valueClz);
			}
			count++;
		}
	}
	
	/**
	 * ���һ�����л��ߣ�or����ֵ��ѯ������ �� where paraName = paraValue �� or paraName = paraValue
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void orEqu(String paraName,Object paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" = ");
			appendValue(paraValue,valueClz);
		}
		else{
			exp.append(" or ");
			exp.append(paraName +" = ");
			appendValue(paraValue,valueClz);
		}
		count++;
	}
	
	/**
	 * ���һ�����л��ߣ�or�����Ȳ�ѯ������ �� where paraName <> paraValue �� or paraName <> paraValue
	 * @param paraName ��ݿ����ֶε���ƣ�������
	 * @param paraValue ������ƣ�����ֵ��
	 * @param valueClz ��������
	 */
	public void orNotEqu(String paraName,Object paraValue,Class valueClz){
		if(count<=0){
			exp.append(" where ");
			exp.append(paraName +" <> ");
			appendValue(paraValue,valueClz);
		}
		else{
			exp.append(" or ");
			exp.append(paraName +" <> ");
			appendValue(paraValue,valueClz);
		}
		count++;
	}
	
	/**
	 * ���һ�������ѯ���� �� order by paraName asc �� ,paraName asc��ǰ���Ѿ���һ������������
	 * �� ��123456 ����
	 * @param paraName Ҫ�����������ݿ��ֶ�
	 */
	public void orderByAsc(String paraName){
		if(orderflag == false){  //�������û�г��ֹ�
			exp.append(" order by ");
			exp.append(paraName +" asc ");
			orderflag = true; //
		}else{
			exp.append(", ");
			exp.append(paraName +" asc ");
		}
		
	}
	
	/**
	 * ���һ���������ѯ���� �� order by paraName desc �� ,paraName desc��ǰ���Ѿ���һ������������
	 * �� �� 654321 ����
	 * @param paraName Ҫ�����������ݿ��ֶ�
	 */
	public void orderByDesc(String paraName){
		if(orderflag == false){  //�������û�г��ֹ�
			exp.append(" order by ");
			exp.append(paraName +" desc ");
			orderflag = true; //
		}else{
			exp.append(", ");
			exp.append(paraName +" desc ");
		}
	}
 
	/**
	 * �����е���������ַ�����
	 */
	public String toString(){
		return exp.toString();
	}
	
	/**
	 * �������
	 */
	public void clear(){
		count = 0;
		exp.delete(0,exp.length());
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Expression exp = new Expression();
		/*
		exp.andEqu("userid", "zhangjs", String.class);
		exp.andLeftBraLike("forumType", "������", String.class);
		exp.orLeftBraLike("forumType", "����", String.class);
		exp.orRightBraLike("forumType", "��ʳ", String.class);
		exp.orEqu("count", 10, Integer.class);
		
		exp.andBetween("checktime", "2018-05-03", String.class);
		exp.andAnd("2018-05-03", String.class);
		exp.orderByDesc("VForumTitle.id.createtime");
		System.out.println(exp.toString());
		*/
		//select * from T_User 
		//where (userid = 'zhangjs' and pwd = '123456') or isdelete = false 
		exp.andLeftBraLike("userid", "zhangjs",  String.class);
		exp.andRightBraLike("pwd", "123456", String.class);
		exp.orEqu("isdelete", "true", Boolean.class);
		exp.orderByAsc("createtime");
		System.out.println(exp.toString());
	}

}

