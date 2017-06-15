package com.blog.po;
import javax.persistence.*;

@Entity
@Table(name="collection")
public class Collection {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String uname;
	private int aid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}

}
