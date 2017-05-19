package com.blog.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import com.blog.po.Article;
import com.blog.po.Category;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class AddArticle extends ActionSupport{
	private String title;
	private String content;
	private int categoryid;
	private ArticleService articleService;
	private CategoryService categoryService;
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
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
	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = df.format(new Date());
		Article article=new Article();
		article.setTitle(title);
		article.setContent(content);
		article.setDatetime(str);
		article.setCategoryid(categoryid);
		article.setHasread(0);
		article.setUsername((String) request.getSession().getAttribute("username"));
		articleService.addArticle(article);
		Category category=new Category();
		category=categoryService.queryByIdCategory(categoryid);
		category.setArticlenum(category.getArticlenum()+1);
		categoryService.updateCategory(category);
		return this.SUCCESS;
	}



}
