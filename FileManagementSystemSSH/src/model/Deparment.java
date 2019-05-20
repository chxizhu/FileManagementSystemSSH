package model;

/**
 * Deparment entity. @author MyEclipse Persistence Tools
 */

public class Deparment implements java.io.Serializable {

	// Fields

	private Integer departmentid;
	private String departmentname;
	private Integer updepartmentid;

	// Constructors

	/** default constructor */
	public Deparment() {
	}

	/** minimal constructor */
	public Deparment(Integer departmentid) {
		this.departmentid = departmentid;
	}

	/** full constructor */
	public Deparment(Integer departmentid, String departmentname,
			Integer updepartmentid) {
		this.departmentid = departmentid;
		this.departmentname = departmentname;
		this.updepartmentid = updepartmentid;
	}

	// Property accessors

	public Integer getDepartmentid() {
		return this.departmentid;
	}

	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}

	public String getDepartmentname() {
		return this.departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}

	public Integer getUpdepartmentid() {
		return this.updepartmentid;
	}

	public void setUpdepartmentid(Integer updepartmentid) {
		this.updepartmentid = updepartmentid;
	}

}