package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowTopTenArticle extends ActionSupport{
	private ArticleService articleService;
	private String username;
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String execute()throws Exception{
		List<Article> all=articleService.queryTopTenArticle();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("topTenArticle", all);
		return super.execute();
	}
}
