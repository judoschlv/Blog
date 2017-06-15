package com.blog.dao;

import java.util.Date;
import java.util.List;

import com.blog.po.*;
public interface ClickrateDAO {
	@SuppressWarnings("rawtypes")
	public List queryByAid(int aid,String ip,Date time);
	public void add(Clickrate clickrate);
     //按查询所有访问
	public List<Clickrate> queryAllClickrate();
	 
	 //按IP查询访问
	public List<Clickrate> queryByIP(String ip);
	
	 //按date查询访问
	public List<Clickrate> queryByTime(Date time);
}
