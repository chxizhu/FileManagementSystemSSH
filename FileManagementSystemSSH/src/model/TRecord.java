package model;

import java.sql.Timestamp;

/**
 * TRecord entity. @author MyEclipse Persistence Tools
 */

public class TRecord implements java.io.Serializable {

	// Fields

	private Integer record;
	private String userId;
	private Integer fileidId;
	private Timestamp downloadTime;

	// Constructors

	/** default constructor */
	public TRecord() {
	}

	/** full constructor */
	public TRecord(String userId, Integer fileidId, Timestamp downloadTime) {
		this.userId = userId;
		this.fileidId = fileidId;
		this.downloadTime = downloadTime;
	}

	// Property accessors

	public Integer getRecord() {
		return this.record;
	}

	public void setRecord(Integer record) {
		this.record = record;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getFileidId() {
		return this.fileidId;
	}

	public void setFileidId(Integer fileidId) {
		this.fileidId = fileidId;
	}

	public Timestamp getDownloadTime() {
		return this.downloadTime;
	}

	public void setDownloadTime(Timestamp downloadTime) {
		this.downloadTime = downloadTime;
	}

}