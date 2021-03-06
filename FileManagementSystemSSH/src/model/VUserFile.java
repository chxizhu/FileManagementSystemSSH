package model;

import java.sql.Timestamp;

/**
 * VUserFileId entity. @author MyEclipse Persistence Tools
 */

public class VUserFile implements java.io.Serializable {

	// Fields

	private String id;
	private String userid;
	private String username;
	private Integer fileid;
	private String filename;
	private String uptime;
	private String dscribe;
	private String lable;
	private String filesize;
	private String filesuffix;
	private String filepath;
	private Integer downloads;
	private Integer typeId;
	private String typename;
	private Integer roleid;
	private String rolename;
	private Integer departmentid;
	private String departmentname;
	private Integer authorityid;
	private String authorityname;
	private Integer FDepartmentId;

	// Constructors

	/** default constructor */
	public VUserFile() {
	}

	/** minimal constructor */
	public VUserFile(String userid, Integer fileid, Integer roleid,
			Integer departmentid, Integer authorityid) {
		this.userid = userid;
		this.fileid = fileid;
		this.roleid = roleid;
		this.departmentid = departmentid;
		this.authorityid = authorityid;
	}

	/** full constructor */
	public VUserFile(String id, String userid, String username,
			Integer fileid, String filename, String uptime, String dscribe,
			String lable, String filesize, String filesuffix, String filepath,
			Integer downloads, Integer typeId, String typename, Integer roleid,
			String rolename, Integer departmentid, String departmentname,
			Integer authorityid, String authorityname, Integer FDepartmentId) {
		this.id = id;
		this.userid = userid;
		this.username = username;
		this.fileid = fileid;
		this.filename = filename;
		this.uptime = uptime;
		this.dscribe = dscribe;
		this.lable = lable;
		this.filesize = filesize;
		this.filesuffix = filesuffix;
		this.filepath = filepath;
		this.downloads = downloads;
		this.typeId = typeId;
		this.typename = typename;
		this.roleid = roleid;
		this.rolename = rolename;
		this.departmentid = departmentid;
		this.departmentname = departmentname;
		this.authorityid = authorityid;
		this.authorityname = authorityname;
		this.FDepartmentId = FDepartmentId;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getFileid() {
		return this.fileid;
	}

	public void setFileid(Integer fileid) {
		this.fileid = fileid;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getUptime() {
		return this.uptime;
	}

	public void setUptime(String uptime) {
		this.uptime = uptime;
	}

	public String getDscribe() {
		return this.dscribe;
	}

	public void setDscribe(String dscribe) {
		this.dscribe = dscribe;
	}

	public String getLable() {
		return this.lable;
	}

	public void setLable(String lable) {
		this.lable = lable;
	}

	public String getFilesize() {
		return this.filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public String getFilesuffix() {
		return this.filesuffix;
	}

	public void setFilesuffix(String filesuffix) {
		this.filesuffix = filesuffix;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Integer getDownloads() {
		return this.downloads;
	}

	public void setDownloads(Integer downloads) {
		this.downloads = downloads;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Integer getRoleid() {
		return this.roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public String getRolename() {
		return this.rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

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

	public Integer getFDepartmentId() {
		return this.FDepartmentId;
	}

	public void setFDepartmentId(Integer FDepartmentId) {
		this.FDepartmentId = FDepartmentId;
	}

}