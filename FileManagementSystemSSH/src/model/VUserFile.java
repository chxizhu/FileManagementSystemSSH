package model;

import java.sql.Timestamp;

/**
 * VUserFile entity. @author MyEclipse Persistence Tools
 */

public class VUserFile implements java.io.Serializable {

	// Fields

		private String userid;
		private String username;
		private Integer fileid;
		private String filename;
		private Timestamp uptime;		
		private String dscribe;
		private String lable;
		private String filesize;
		private String filesuffix;
		private String filepath;
		private Integer downloads;
		private Integer typeId;
		private String typename;

		// Constructors

		/** default constructor */
		public VUserFile() {
		}

		/** minimal constructor */
		public VUserFile(String userid, Integer fileid) {
			this.userid = userid;
			this.fileid = fileid;
		}

		/** full constructor */
		public VUserFile(String userid, String username, Integer fileid,
				String filename, Timestamp uptime, String dscribe,
				String lable, String filesize, String filesuffix, String filepath,
				Integer downloads, Integer typeId, String typename) {
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
		}

		// Property accessors

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

		public Timestamp getUptime() {
			return this.uptime;
		}

		public void setUptime(Timestamp uptime) {
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

}