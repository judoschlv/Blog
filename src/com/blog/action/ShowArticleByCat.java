package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.po.Category;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowArticleByCat extends ActionSupport{
	private int categoryid;
	private ArticleService articleService;
	private CategoryService categoryService;
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		List<Article> allbycat=articleService.queryByCate(categoryid);
		Category category=new Category();
		category=categoryService.queryByIdCategory(categoryid);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allbycat", allbycat);
		request.setAttribute("cat", category);
		return this.SUCCESS;
	}
}
