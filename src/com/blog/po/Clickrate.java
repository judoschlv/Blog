package com.blog.po;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="clickrate")
public class Clickrate {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int aid;
	private String ip;
	
	@Temporal(TemporalType.DATE)
	private Date time;
	
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
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
}
