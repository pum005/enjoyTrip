package com.ssafy.model.dto;

public class info {
	int contentId;
	int contentTypeId;
	String title;
	String address;
	String img;
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public int getContentTypeId() {
		return contentTypeId;
	}
	public void setContentTypeId(int contentTypeId) {
		this.contentTypeId = contentTypeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "info [contentId=" + contentId + ", contentTypeId=" + contentTypeId + ", title=" + title + ", address="
				+ address + ", img=" + img + "]";
	}
	
	public info() {};
	
	public info(int contentId, int contentTypeId, String title, String address, String img) {
		super();
		this.contentId = contentId;
		this.contentTypeId = contentTypeId;
		this.title = title;
		this.address = address;
		this.img = img;
	}
	
	
	
	
}
