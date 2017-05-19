package com.blog.po;

import javax.persistence.*;

@Entity
@Table(name="category")
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private int articlenum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getArticlenum() {
		return articlenum;
	}
	public void setArticlenum(int articlenum) {
		this.articlenum = articlenum;
	}
	
}
