package com.blog.action;



import com.blog.po.Article;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpdateHot extends ActionSupport{
	private int id;
	private ArticleService articleService;
	private String hot;

	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public ArticleService getArticleService() {
		return articleService;
	}


	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}


	public String getHot() {
		return hot;
	}


	public void setHot(String hot) {
		this.hot = hot;
	}


	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Article article = new Article();
		article=articleService.showArticle(id);
		this.setHot(article.getHot());
		System.out.println("id-----------------"+id);
		System.out.println("article------------"+article);
		System.out.println("hot----------------"+hot);
		if(this.getHot().equals("默认")){
			article.setHot("推荐");
			System.out.println("=================");
		}else if(this.getHot().equals("推荐")){
			article.setHot("默认");
			System.out.println("-----------------");
		}else{article.setHot(
		    article.getHot());
		System.out.println("++++++++++++++++");
		}
		articleService.updateArticle(article);
		return this.SUCCESS;
	}


	
}
