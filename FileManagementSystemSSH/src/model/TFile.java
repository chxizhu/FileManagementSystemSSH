package model;

import java.sql.Timestamp;

/**
 * TFile entity. @author MyEclipse Persistence Tools
 */

public class TFile implements java.io.Serializable {

	// Fields

	private Integer fileid;
	private String filename;
	private String uptime;
	private String author;
	private Integer typeId;
	private String dscribe;
	private Integer authorityId;
	private String lable;
	private String filesize;
	private String filesuffix;
	private String filepath;
	private Integer downloads;

	// Constructors

	/** default constructor */
	public TFile() {
	}

	/** full constructor */
	public TFile(String filename, String uptime, String author,
			Integer typeId, String dscribe, Integer authorityId, String lable,
			String filesize, String filesuffix, String filepath,
			Integer downloads) {
		this.filename = filename;
		this.uptime = uptime;
		this.author = author;
		this.typeId = typeId;
		this.dscribe = dscribe;
		this.authorityId = authorityId;
		this.lable = lable;
		this.filesize = filesize;
		this.filesuffix = filesuffix;
		this.filepath = filepath;
		this.downloads = downloads;
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

	public String getUptime() {
		return this.uptime;
	}

	public void setUptime(String string) {
		this.uptime = string;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
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

}