package model;

/**
 * TDeparment entity. @author MyEclipse Persistence Tools
 */

public class TDeparment implements java.io.Serializable {

	// Fields

	private Integer departmentid;
	private String departmentname;
	private Integer updepartmentid;

	// Constructors

	/** default constructor */
	public TDeparment() {
	}

	/** minimal constructor */
	public TDeparment(Integer departmentid) {
		this.departmentid = departmentid;
	}

	/** full constructor */
	public TDeparment(Integer departmentid, String departmentname,
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