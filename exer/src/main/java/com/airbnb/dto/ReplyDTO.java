package com.airbnb.dto;

public class ReplyDTO {
	int id;
	String user_id;
	int home_id;
	String content;
	String date;
	int coment;
	double rating;

	public ReplyDTO(int id, String user_id, int home_id, String content, String date, double rating) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.home_id = home_id;
		this.content = content;
		this.date = date;
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "ReplyDTO [id=" + id + ", user_id=" + user_id + ", home_id=" + home_id + ", content=" + content
				+ ", date=" + date + ", coment=" + coment + ", rating=" + rating + "]";
	}

	public double getRating() {
		return rating;
	}

	public void setRating(float f) {
		this.rating = f;
	}

	public int getComent() {
		return coment;
	}

	public void setComent(int coment) {
		this.coment = coment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getHome_id() {
		return home_id;
	}

	public void setHome_id(int home_id) {
		this.home_id = home_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public ReplyDTO() {

	}

}
