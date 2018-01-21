package com.ssh.util;

import java.util.List;

/**
 * 封装分页信息工具类
 * @author Bin
 *
 */
public class PageBean {
	/**
	 * cpage:当前页数
	 * showNem:每页显示条数
	 * allPage:总页数
	 * allNum:数据总条数
	 * result:每页显示的数据
	 */
	private int cpage=1;
	private int showNum=6;
	private int allPage=0;
	private int allNum=0;

	private List result;

	public PageBean() {
		super();
	}

	public PageBean(int cpage, int showNum, int allPage, int allNum, List result) {
		super();
		this.cpage = cpage;
		this.showNum = showNum;
		this.allPage = allPage;
		this.allNum = allNum;
		this.result = result;
	}

	public int getCpage() {
		return cpage;
	}

	public void setCpage(int cpage) {
		this.cpage = cpage;
	}

	public int getShowNum() {
		return showNum;
	}

	public void setShowNum(int showNum) {
		this.showNum = showNum;
	}

	public int getAllPage() {
		return allPage;
	}

	public void setAllPage(int allPage) {
		this.allPage = allPage;
	}

	public int getAllNum() {
		return allNum;
	}

	public void setAllNum(int allNum) {
		this.allNum = allNum;
		//根据总条数,计算总页数
		if(this.allNum%this.showNum==0)
			this.allPage=this.allNum/this.showNum;
		else
			this.allPage=this.allNum/this.showNum+1;
	}

	public List getResult() {
		return result;
	}

	public void setResult(List result) {
		this.result = result;
	}

}
