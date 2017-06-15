package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowAllArticleByHot extends ActionSupport{
	private ArticleService articleService;
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	public String execute()throws Exception{
		List<Article> all=articleService.queryByhot();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allArticleByHot", all);
		return super.execute();
	}
}
