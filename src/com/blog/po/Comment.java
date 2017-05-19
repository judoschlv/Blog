package com.blog.po;

import javax.persistence.*;

@Entity
@Table(name="comment")
public class Comment {	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int aid;
	private String content;
	private String username;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
