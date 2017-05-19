package com.blog.action;

import com.blog.po.Category;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteCategory extends ActionSupport{
	private CategoryService categoryService;
	private int id;

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Category category=new Category();
		category=categoryService.queryByIdCategory(id);
		categoryService.deleteCategory(category);
		return this.SUCCESS;
	}

}
