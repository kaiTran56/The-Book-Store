package com.team.model;

public class Image {
	private int id;
	private String url;

	public Image(String url) {
		super();

		this.url = url;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String toString() {
		return "id: " + id + " ,url: " + url;
	}
}
