package com.ssh.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * 客户信息的实体类
 * @author Administrator
 *
 */

@Entity
@Table(name="customer")
public class Customer {
	private Integer cid;//	用户ID
	private String cname;//	客户名称
	private String ctaxcode;//	客户税号
	private String clinkman;//	联系人
	private String cphone;//	联系电话
	private String caddress;//	地址
	private String cexplain;//	说明
	private Date dcreatedatetime;//	创建日期
	private Integer cstatus=1;// 0:锁定 1:正常 状态
	private String cremark;//	备注

	public Customer() {
	}

	public Customer(Integer cid, String cname, String ctaxcode, String clinkman, String cphone, String caddress, String cexplain, Date dcreatedatetime, Integer cstatus, String cremark) {
		this.cid = cid;
		this.cname = cname;
		this.ctaxcode = ctaxcode;
		this.clinkman = clinkman;
		this.cphone = cphone;
		this.caddress = caddress;
		this.cexplain = cexplain;
		this.dcreatedatetime = dcreatedatetime;
		this.cstatus = cstatus;
		this.cremark = cremark;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtaxcode() {
		return ctaxcode;
	}

	public void setCtaxcode(String ctaxcode) {
		this.ctaxcode = ctaxcode;
	}

	public String getClinkman() {
		return clinkman;
	}

	public void setClinkman(String clinkman) {
		this.clinkman = clinkman;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getCexplain() {
		return cexplain;
	}

	public void setCexplain(String cexplain) {
		this.cexplain = cexplain;
	}

	@Column(columnDefinition="date")
	public Date getDcreatedatetime() {
		return dcreatedatetime;
	}

	public void setDcreatedatetime(Date dcreatedatetime) {
		this.dcreatedatetime = dcreatedatetime;
	}

	public Integer getCstatus() {
		return cstatus;
	}

	public void setCstatus(Integer cstatus) {
		this.cstatus = cstatus;
	}

	public String getCremark() {
		return cremark;
	}

	public void setCremark(String cremark) {
		this.cremark = cremark;
	}
}