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
     private String userid;
     private String username;
     private String filesize;
     private String filesuffix;
     private String lable;
     private String typename;
     private String filepath;
     private String dscribe;
     private Integer authorityId;


    // Constructors

    /** default constructor */
    public VFile() {
    }

	/** minimal constructor */
    public VFile(Integer fileid, String userid) {
        this.fileid = fileid;
        this.userid = userid;
    }
    
    /** full constructor */
    public VFile(Integer fileid, String filename, Timestamp uptime, String userid, String username, String filesize, String filesuffix, String lable, String typename, String filepath, String dscribe, Integer authorityId) {
        this.fileid = fileid;
        this.filename = filename;
        this.uptime = uptime;
        this.userid = userid;
        this.username = username;
        this.filesize = filesize;
        this.filesuffix = filesuffix;
        this.lable = lable;
        this.typename = typename;
        this.filepath = filepath;
        this.dscribe = dscribe;
        this.authorityId = authorityId;
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

    public String getLable() {
        return this.lable;
    }
    
    public void setLable(String lable) {
        this.lable = lable;
    }

    public String getTypename() {
        return this.typename;
    }
    
    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getFilepath() {
        return this.filepath;
    }
    
    public void setFilepath(String filepath) {
        this.filepath = filepath;
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
    }