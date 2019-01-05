package com.project.domain;

import java.io.File;
import java.util.Date;

public class User{
	private Integer uid;
	private String name;
	private String sex;
	private Date data;
	private String certificates;
	private String idenNumber;
	private String phone;
	private String work;
	private String department;
	private String post;
	private String title;
	private String highEducation;
	private String major;
	private String goodDirection;
	private File licensing;
	private String licensingFileName;
	private File titleCertificate;
	private String titleCertificateFileName;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getCertificates() {
		return certificates;
	}
	public void setCertificates(String certificates) {
		this.certificates = certificates;
	}
	public String getIdenNumber() {
		return idenNumber;
	}
	public void setIdenNumber(String idenNumber) {
		this.idenNumber = idenNumber;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHighEducation() {
		return highEducation;
	}
	public void setHighEducation(String highEducation) {
		this.highEducation = highEducation;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getGoodDirection() {
		return goodDirection;
	}
	public void setGoodDirection(String goodDirection) {
		this.goodDirection = goodDirection;
	}
	public File getLicensing() {
		return licensing;
	}
	public void setLicensing(File licensing) {
		this.licensing = licensing;
	}
	public String getLicensingFileName() {
		return licensingFileName;
	}
	public void setLicensingFileName(String licensingFileName) {
		this.licensingFileName = licensingFileName;
	}
	public File getTitleCertificate() {
		return titleCertificate;
	}
	public void setTitleCertificate(File titleCertificate) {
		this.titleCertificate = titleCertificate;
	}
	public String getTitleCertificateFileName() {
		return titleCertificateFileName;
	}
	public void setTitleCertificateFileName(String titleCertificateFileName) {
		this.titleCertificateFileName = titleCertificateFileName;
	}
	
	@Override
	public String toString() {
		return "User [uid=" + uid + ", name=" + name + ", sex=" + sex + ", data=" + data + ", certificates="
				+ certificates + ", idenNumber=" + idenNumber + ", phone=" + phone + ", work=" + work + ", department="
				+ department + ", post=" + post + ", title=" + title + ", highEducation=" + highEducation + ", major="
				+ major + ", goodDirection=" + goodDirection + ", licensing=" + licensing + ", licensingFileName="
				+ licensingFileName + ", titleCertificate=" + titleCertificate + ", titleCertificateFileName="
				+ titleCertificateFileName + "]";
	}
	
}
