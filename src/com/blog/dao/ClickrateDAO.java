package com.blog.dao;

import java.util.Date;
import java.util.List;

import com.blog.po.*;
public interface ClickrateDAO {
	@SuppressWarnings("rawtypes")
	public List queryByAid(int aid,String ip,Date time);
	public void add(Clickrate clickrate);
}
