package com.jk.model;
// Generated 2018-4-9 15:52:49 by Hibernate Tools 4.0.0

public class TArea implements java.io.Serializable {

	private Integer codeid;
	private int parentid;
	private String cityname;

	@Override
	public String toString() {
		return "TArea{" +
				"codeid=" + codeid +
				", parentid=" + parentid +
				", cityname='" + cityname + '\'' +
				'}';
	}

	public Integer getCodeid() {
		return codeid;
	}

	public void setCodeid(Integer codeid) {
		this.codeid = codeid;
	}

	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
}
