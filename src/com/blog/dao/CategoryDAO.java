package com.blog.dao;

import java.util.List;

import com.blog.po.Category;

public interface CategoryDAO {
	//添加分类
	public void add(Category category);
	
	//更新分类
	public void update(Category category);
	
	//删除分类
	public void delete(Category category);
	
	//查询所有分类
	public List<Category> queryAll();
	
	//按ID查询分类
	public Category queryById(int id);
}
