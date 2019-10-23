package com.entity;

public class PageBean {

	private int page;
	private int rows;
	
	//添加一个起始下标变量
	private int index;

	public int getIndex() {
		return (page-1)*rows;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
}
