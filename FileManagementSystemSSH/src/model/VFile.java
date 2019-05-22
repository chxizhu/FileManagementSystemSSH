package model;

import java.sql.Timestamp;

/**
 * VFileId entity. @author MyEclipse Persistence Tools
 */

public class VFile implements java.io.Serializable {

	// Fields

	private Integer fileid;
	private String filename;
	private Timestamp uptime;
	private String author;
	private String dscribe;
	private Integer authorityId;
	private String lable;
	private String filesuffix;
	private String filesize;
	private String filepath;
	private Integer downloads;
	private Integer typeid;
	private String typename;
	private Integer authorityid;
	private Integer includeid;
	private String authorityname;

	// Constructors

	/** default constructor */
	public VFile() {
	}

	/** minimal constructor */
	public VFile(Integer fileid, Integer typeid, Integer authorityid) {
		this.fileid = fileid;
		this.typeid = typeid;
		this.authorityid = authorityid;
	}

	/** full constructor */
	public VFile(Integer fileid, String filename, Timestamp uptime,
			String author, String dscribe, Integer authorityId, String lable,
			String filesuffix, String filesize, String filepath,
			Integer downloads, Integer typeid, String typename,
			Integer authorityid, Integer includeid, String authorityname) {
		this.fileid = fileid;
		this.filename = filename;
		this.uptime = uptime;
		this.author = author;
		this.dscribe = dscribe;
		this.authorityId = authorityId;
		this.lable = lable;
		this.filesuffix = filesuffix;
		this.filesize = filesize;
		this.filepath = filepath;
		this.downloads = downloads;
		this.typeid = typeid;
		this.typename = typename;
		this.authorityid = authorityid;
		this.includeid = includeid;
		this.authorityname = authorityname;
	}

	// Property accessors

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

	public Timestamp getUptime() {
		return this.uptime;
	}

	public void setUptime(Timestamp uptime) {
		this.uptime = uptime;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDscribe() {
		return this.dscribe;
	}

	public void setDscribe(String dscribe) {
		this.dscribe = dscribe;
	}

	public Integer getAuthorityId() {
		return this.authorityId;
	}

	public void setAuthorityId(Integer authorityId) {
		this.authorityId = authorityId;
	}

	public String getLable() {
		return this.lable;
	}

	public void setLable(String lable) {
		this.lable = lable;
	}

	public String getFilesuffix() {
		return this.filesuffix;
	}

	public void setFilesuffix(String filesuffix) {
		this.filesuffix = filesuffix;
	}

	public String getFilesize() {
		return this.filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
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

	public Integer getTypeid() {
		return this.typeid;
	}

	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Integer getAuthorityid() {
		return this.authorityid;
	}

	public void setAuthorityid(Integer authorityid) {
		this.authorityid = authorityid;
	}

	public Integer getIncludeid() {
		return this.includeid;
	}

	public void setIncludeid(Integer includeid) {
		this.includeid = includeid;
	}

	public String getAuthorityname() {
		return this.authorityname;
	}

	public void setAuthorityname(String authorityname) {
		this.authorityname = authorityname;
	}
}