package com.ssh.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 用户实体类
 * @Author:
 * @Description:
 * @Date:Created in 18:12 2017/11/4
 * @Modified By:
 */
@Entity
@Table(name="users")
public class Users implements Serializable{
    private Integer uno;
    private String uname;//登录名
    private String upwd;
    private String uphone;
    private String uemail;
    private String uploadImage;//用户头像
    private Integer utype;//用户类型  1：研发 2:业务 3:管理
    private Date uintime=new Date();// 创建日期
    private Integer ustatus=1;// 用户状态  0：无效 1：有效
    private String uremark;// 备注

    public Users() {
    }

    public Users(Integer uno, String uname, String upwd, String uphone, String uemail, String uploadImage, Integer utype, Date uintime, Integer ustatus, String uremark) {
        this.uno = uno;
        this.uname = uname;
        this.upwd = upwd;
        this.uphone = uphone;
        this.uemail = uemail;
        this.uploadImage = uploadImage;
        this.utype = utype;
        this.uintime = uintime;
        this.ustatus = ustatus;
        this.uremark = uremark;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    public Integer getUno() {
        return uno;
    }

    public void setUno(Integer uno) {
        this.uno = uno;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(String uploadImage) {
        this.uploadImage = uploadImage;
    }

    public Integer getUtype() {
        return utype;
    }

    public void setUtype(Integer utype) {
        this.utype = utype;
    }

    @Column(columnDefinition = "date")
    public Date getUintime() {
        return uintime;
    }

    public void setUintime(Date uintime) {
        this.uintime = uintime;
    }

    public Integer getUstatus() {
        return ustatus;
    }

    public void setUstatus(Integer ustatus) {
        this.ustatus = ustatus;
    }

    public String getUremark() {
        return uremark;
    }

    public void setUremark(String uremark) {
        this.uremark = uremark;
    }
}
