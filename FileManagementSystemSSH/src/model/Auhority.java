package model;

/**
 * Auhority entity. @author MyEclipse Persistence Tools
 */

public class Auhority implements java.io.Serializable {

	// Fields

	private Integer authorityid;
	private String authorityname;
	private Integer includeid;

	// Constructors

	/** default constructor */
	public Auhority() {
	}

	/** minimal constructor */
	public Auhority(Integer authorityid) {
		this.authorityid = authorityid;
	}

	/** full constructor */
	public Auhority(Integer authorityid, String authorityname, Integer includeid) {
		this.authorityid = authorityid;
		this.authorityname = authorityname;
		this.includeid = includeid;
	}

	// Property accessors

	public Integer getAuthorityid() {
		return this.authorityid;
	}

	public void setAuthorityid(Integer authorityid) {
		this.authorityid = authorityid;
	}

	public String getAuthorityname() {
		return this.authorityname;
	}

	public void setAuthorityname(String authorityname) {
		this.authorityname = authorityname;
	}

	public Integer getIncludeid() {
		return this.includeid;
	}

	public void setIncludeid(Integer includeid) {
		this.includeid = includeid;
	}

}