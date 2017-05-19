package com.blog.service;

import java.util.List;

import com.blog.po.Category;

public interface CategoryService {
	//添加分类
	public void addCategory(Category category);
	
	//更新分类
	public void updateCategory(Category category);
	
	//删除分类
	public void deleteCategory(Category category);
	
	//查询所有分类
	public List<Category> queryAllCategory();
	
	//按ID查询分类
	public Category queryByIdCategory(int id);
}
