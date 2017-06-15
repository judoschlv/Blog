package com.blog.dao;

import java.util.List;

import com.blog.po.Article;
import com.blog.po.Collection;

public interface CollectionDAO {
	//添加一则收藏
	public void add(Collection collection);
	
	//删除一则收藏
	public void delete(Collection collection);

	//按uname查找Collection
	public List<Collection> queryByUname(String uname);
	
	//按aid查找Collection
	public List<Collection> queryByAid(int aid);
	
	//按ID查询Collection
	public Collection queryByID(int id);
	
}
