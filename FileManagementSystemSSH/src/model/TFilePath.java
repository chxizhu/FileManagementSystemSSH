package model;

/**
 * TFilePath entity. @author MyEclipse Persistence Tools
 */

public class TFilePath implements java.io.Serializable {

	// Fields

	private Integer pathid;
	private String filepath;

	// Constructors

	/** default constructor */
	public TFilePath() {
	}

	/** minimal constructor */
	public TFilePath(Integer pathid) {
		this.pathid = pathid;
	}

	/** full constructor */
	public TFilePath(Integer pathid, String filepath) {
		this.pathid = pathid;
		this.filepath = filepath;
	}

	// Property accessors

	public Integer getPathid() {
		return this.pathid;
	}

	public void setPathid(Integer pathid) {
		this.pathid = pathid;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

}