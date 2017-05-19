package com.blog.action;

import com.blog.po.Category;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddCategory extends ActionSupport{
	private String name;
	private CategoryService categoryService;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Category category=new Category();
		category.setName(name);
		category.setArticlenum(0);
		categoryService.addCategory(category);
		return this.SUCCESS;
	}
}
