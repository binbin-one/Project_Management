package com.ssh.entity;
import javax.persistence.*;
import java.util.Date;

/**
 * 产品信息实体类
 * @author Administrator
 *
 */

@Entity
@Table(name="product")
public class Product {
	private Integer cid;				//产品ID
	private String cname;				//产品名称
	private String ccode;				//特征码
	private String cexplain;			//产品简介
	private Integer ccreateuserid;	//创建人ID
	private Date dcreatedatetime;	//创建日期
	private Integer cstatus;			//状态
	private String cremark;			//备注

	public Product() {
	}

	public Product(Integer cid, String cname, String ccode, String cexplain, Integer ccreateuserid, Date dcreatedatetime, Integer cstatus, String cremark) {
		this.cid = cid;
		this.cname = cname;
		this.ccode = ccode;
		this.cexplain = cexplain;
		this.ccreateuserid = ccreateuserid;
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

	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public String getCexplain() {
		return cexplain;
	}

	public void setCexplain(String cexplain) {
		this.cexplain = cexplain;
	}

	public Integer getCcreateuserid() {
		return ccreateuserid;
	}

	public void setCcreateuserid(Integer ccreateuserid) {
		this.ccreateuserid = ccreateuserid;
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