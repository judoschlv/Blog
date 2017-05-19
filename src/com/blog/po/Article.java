package com.blog.po;
import javax.persistence.*;

@Entity
@Table(name="article")
public class Article {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private String title;
	private String content;
	private int categoryid;
	private String datetime;
	private int hasread;
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public int getHasread() {
		return hasread;
	}
	public void setHasread(int hasread) {
		this.hasread = hasread;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}	
}
