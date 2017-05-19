package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Category;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowCategory extends ActionSupport{
	private CategoryService categoryService;

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public String execute()throws Exception{
		List<Category> all=categoryService.queryAllCategory();
		HttpServletRequest request = ServletActionContext.getRequest();
		if(all.size()>0){
			request.setAttribute("categoryList", all);
		}else{
			request.setAttribute("categoryList","none");
		}
		return super.execute();
	}
}
