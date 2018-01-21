package com.ssh.entity;
import javax.persistence.*;
import java.util.Date;

/**
 * 注册项目类
 */

@Entity
@Table(name="enroll")
public class Enroll {
	private Integer cid;//	注册ID
	private String citemid;//	项目ID
	private String cexplain;//说明
	private Date dcreatedatetime;//	创建日期
	private String cremark;//	备注

	public Enroll() {
	}

	public Enroll(Integer cid, String citemid, String cexplain, Date dcreatedatetime, String cremark) {
		this.cid = cid;
		this.citemid = citemid;
		this.cexplain = cexplain;
		this.dcreatedatetime = dcreatedatetime;
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

	public String getCitemid() {
		return citemid;
	}

	public void setCitemid(String citemid) {
		this.citemid = citemid;
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

	public String getCremark() {
		return cremark;
	}

	public void setCremark(String cremark) {
		this.cremark = cremark;
	}
}
