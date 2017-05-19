package com.blog.service;

import java.util.List;

import com.blog.dao.CategoryDAO;
import com.blog.po.Category;

public class CategoryServiceImpl implements CategoryService{
	private CategoryDAO categoryDAO;
	public CategoryDAO getCategoryDAO() {
		return categoryDAO;
	}

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	//添加分类
	public void addCategory(Category category){
		categoryDAO.add(category);
	}
	
	//更新分类
	public void updateCategory(Category category){
		categoryDAO.update(category);
	}
	
	//删除分类
	public void deleteCategory(Category category){
		categoryDAO.delete(category);
	}
	
	//查询所有分类
	public List<Category> queryAllCategory(){
		return categoryDAO.queryAll();
	}
	
	//按ID查询分类
	public Category queryByIdCategory(int id){
		return categoryDAO.queryById(id);
	}


}
