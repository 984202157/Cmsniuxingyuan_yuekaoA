package com.bw.entity;

import java.io.File;
import java.io.Serializable;
import java.util.Date;

public class CaiWu implements Serializable{
	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Date fudate;
	private String funum;
	private String futype;
	private String funame;
	private String com;
	private String dingdan;
	private Integer tid;
	private String fudanwei;
	private String fukaihu;
	private String zh;
	private String jscom;
	private String jsren;
	private String fushiyou;
	private Double jine;
	private String fupic;
	private String beizhu;
	private CmsAtype cmsAtype;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getFudate() {
		return fudate;
	}
	public void setFudate(Date fudate) {
		this.fudate = fudate;
	}
	public String getFunum() {
		return funum;
	}
	public void setFunum(String funum) {
		this.funum = funum;
	}
	public String getFutype() {
		return futype;
	}
	public void setFutype(String futype) {
		this.futype = futype;
	}
	public String getFuname() {
		return funame;
	}
	public void setFuname(String funame) {
		this.funame = funame;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public String getDingdan() {
		return dingdan;
	}
	public void setDingdan(String dingdan) {
		this.dingdan = dingdan;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getFudanwei() {
		return fudanwei;
	}
	public void setFudanwei(String fudanwei) {
		this.fudanwei = fudanwei;
	}
	public String getFukaihu() {
		return fukaihu;
	}
	public void setFukaihu(String fukaihu) {
		this.fukaihu = fukaihu;
	}
	public String getZh() {
		return zh;
	}
	public void setZh(String zh) {
		this.zh = zh;
	}
	public String getJscom() {
		return jscom;
	}
	public void setJscom(String jscom) {
		this.jscom = jscom;
	}
	public String getJsren() {
		return jsren;
	}
	public void setJsren(String jsren) {
		this.jsren = jsren;
	}
	public String getFushiyou() {
		return fushiyou;
	}
	public void setFushiyou(String fushiyou) {
		this.fushiyou = fushiyou;
	}
	public Double getJine() {
		return jine;
	}
	public void setJine(Double jine) {
		this.jine = jine;
	}
	public String getFupic() {
		return fupic;
	}
	public void setFupic(String fupic) {
		this.fupic = fupic;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public CmsAtype getCmsAtype() {
		return cmsAtype;
	}
	public void setCmsAtype(CmsAtype cmsAtype) {
		this.cmsAtype = cmsAtype;
	}
	public CaiWu(Integer id, Date fudate, String funum, String futype, String funame, String com, String dingdan,
			Integer tid, String fudanwei, String fukaihu, String zh, String jscom, String jsren, String fushiyou,
			Double jine, String fupic, String beizhu, CmsAtype cmsAtype) {
		super();
		this.id = id;
		this.fudate = fudate;
		this.funum = funum;
		this.futype = futype;
		this.funame = funame;
		this.com = com;
		this.dingdan = dingdan;
		this.tid = tid;
		this.fudanwei = fudanwei;
		this.fukaihu = fukaihu;
		this.zh = zh;
		this.jscom = jscom;
		this.jsren = jsren;
		this.fushiyou = fushiyou;
		this.jine = jine;
		this.fupic = fupic;
		this.beizhu = beizhu;
		this.cmsAtype = cmsAtype;
	}
	public CaiWu() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CaiWu [id=" + id + ", fudate=" + fudate + ", funum=" + funum + ", futype=" + futype + ", funame="
				+ funame + ", com=" + com + ", dingdan=" + dingdan + ", tid=" + tid + ", fudanwei=" + fudanwei
				+ ", fukaihu=" + fukaihu + ", zh=" + zh + ", jscom=" + jscom + ", jsren=" + jsren + ", fushiyou="
				+ fushiyou + ", jine=" + jine + ", fupic=" + fupic + ", beizhu=" + beizhu + ", cmsAtype=" + cmsAtype
				+ "]";
	}

	
	
	
	
	
}
