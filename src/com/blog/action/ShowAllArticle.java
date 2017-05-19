package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowAllArticle extends ActionSupport{
	private ArticleService articleService;
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		List<Article> all=articleService.queryAllArticle();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allArticle", all);
		return this.SUCCESS;
	}
}
