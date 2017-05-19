package com.blog.util;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowRss extends ActionSupport{
	private ArticleService articleService;

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		List<Article> result=articleService.queryAllArticle();
		String filePath=ServletActionContext.getServletContext().getRealPath("/rss.xml");
		CreateRss.PublishRss(result, filePath);
		return this.SUCCESS;
	}
}
