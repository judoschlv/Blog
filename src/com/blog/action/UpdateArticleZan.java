package com.blog.action;



import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpdateArticleZan extends ActionSupport{
	private ArticleService articleService;
	private int id;
	private int zan;

	
	public ArticleService getArticleService() {
		return articleService;
	}


	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getZan() {
		return zan;
	}


	public void setZan(int zan) {
		this.zan = zan;
	}


	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Article article = new Article();
		article=articleService.showArticle(id);
		zan = article.getZan();
		zan+=1;
		article.setZan(zan);
		articleService.updateArticle(article);
		return this.SUCCESS;
	}


	
}
