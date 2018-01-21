package com.ssh.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 项目实体类
 */

@Entity
@Table(name="item")
public class Item implements Serializable{
	private int cid;					//项目ID
	private String cname;				//项目名称
	private String cexplain;			//项目简介
	private Date dcreatedatetime;	//创建日期
	private String dsalary;			//金额
	private int cusetype;			//项目类型 0:试用 1:正式
	private int cpaytype;			//付款状态 0:未结款 1:结款中 2:已结款
	private int cstatus;				//项目状态 0:无效 1:有效
	private String cremark;			//备注

	//多个项目对应一个客户
	private Customer customer;//客户信息
	private Product product;//产品信息
	private Users users;//用户信息
	public Item() {
	}

	public Item(int cid, String cname, String cexplain, Date dcreatedatetime, String dsalary, int cusetype, int cpaytype, int cstatus, String cremark) {
		this.cid = cid;
		this.cname = cname;
		this.cexplain = cexplain;
		this.dcreatedatetime = dcreatedatetime;
		this.dsalary = dsalary;
		this.cusetype = cusetype;
		this.cpaytype = cpaytype;
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

	public String getDsalary() {
		return dsalary;
	}

	public void setDsalary(String dsalary) {
		this.dsalary = dsalary;
	}

	public Integer getCusetype() {
		return cusetype;
	}

	public void setCusetype(Integer cusetype) {
		this.cusetype = cusetype;
	}

	public Integer getCpaytype() {
		return cpaytype;
	}

	public void setCpaytype(Integer cpaytype) {
		this.cpaytype = cpaytype;
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
	//多对一映射关系
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "icno")
	public Customer getCustomer() { return customer; }

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	//多对一映射关系
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "ipno")
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	//多对一映射关系
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "iuno")
	public Users getUsers() { return users; }

	public void setUsers(Users users) { this.users = users; }
}
