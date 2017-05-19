package com.blog.po;

import javax.persistence.*;

@Entity
@Table(name="user")
public class User {
	@Id
	private String username;
	private String password;
	private String nickname;
	private String blogtitle;
	private String idiograph;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBlogtitle() {
		return blogtitle;
	}
	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}
	public String getIdiograph() {
		return idiograph;
	}
	public void setIdiograph(String idiograph) {
		this.idiograph = idiograph;
	}
}
