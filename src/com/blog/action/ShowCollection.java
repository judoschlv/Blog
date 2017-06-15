package com.blog.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Collection;
import com.blog.po.Article;
import com.blog.service.CollectionService;
import com.blog.service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowCollection extends ActionSupport{
	private CollectionService collectionService;
	private ArticleService articleService;
	private Article article;
	private Collection collection;

	public Collection getCollection() {
		return collection;
	}

	public void setCollection(Collection collection) {
		this.collection = collection;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public CollectionService getCollectionService() {
		return collectionService;
	}

	public void setCollectionService(CollectionService collectionService) {
		this.collectionService = collectionService;
	}

	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		List<Collection> all=collectionService.queryByUname((String) request.getSession().getAttribute("username"));
		if(all==null){
			request.setAttribute("allCollection", null);
			return SUCCESS;
		}
	    List<Article> allarticle = new ArrayList<Article>();
		for(int i =0;i<all.size();i++){
			article = articleService.showArticle(all.get(i).getAid());
			System.out.println("++++++++++++++++++++"+all.get(i).getAid());
			System.out.println("--------------------"+articleService.showArticle(all.get(i).getAid()).getTitle());
		    allarticle.add(i,article);
		}
		request.setAttribute("allCollection", allarticle);
		return this.SUCCESS;
	}
}






