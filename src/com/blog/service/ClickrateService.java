package com.blog.service;

import java.util.Date;

public interface ClickrateService {
	//判断是否点击过
	public boolean isVistor(int aid,String ip,Date time);
}
