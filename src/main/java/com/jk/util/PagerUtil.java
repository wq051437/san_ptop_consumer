package com.jk.util;

public class PagerUtil {
	private Integer page;
	private Integer rows;
	private Integer start;
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getStart() {
		this.start = ( this.page - 1 ) * this.rows ;
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	@Override
	public String toString() {
		return "PagerUtil [page=" + page + ", rows=" + rows + ", start=" + start + "]";
	}

	
}
