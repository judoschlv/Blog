package com.blog.service;

import java.util.Date;
import java.util.List;

import com.blog.po.Clickrate;

public interface ClickrateService {
	//判断是否点击过
	public boolean isVistor(int aid,String ip,Date time);
	
	//按查询所有文章
	public List<Clickrate> queryAllClickrate();
	
	//按date查询访问
	public List<Clickrate> queryByTime(Date time);
}
