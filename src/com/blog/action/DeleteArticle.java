package com.blog.action;


import java.util.List;

import com.blog.po.Article;
import com.blog.po.Category;
import com.blog.po.Collection;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.blog.service.CollectionService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteArticle extends ActionSupport{
	private int id;
	private ArticleService articleService;
	private CategoryService categoryService;
	private CollectionService collectionService;
	private List<Collection> collectionlist;
	public CollectionService getCollectionService() {
		return collectionService;
	}
	public void setCollectionService(CollectionService collectionService) {
		this.collectionService = collectionService;
	}
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
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Article article=new Article();
		article=articleService.showArticle(id);
		collectionlist = collectionService.queryByAid(id);
		if(collectionlist!=null){
		for(int i =0;i<collectionlist.size();i++){
			collectionService.delete(collectionlist.get(i));
		}}
		articleService.deleteArticle(article);
		Category category=new Category();
		category=categoryService.queryByIdCategory(article.getCategoryid());
		category.setArticlenum(category.getArticlenum()-1);
		categoryService.updateCategory(category);
		System.out.println("获得到的值为------------"+id);
		return this.SUCCESS;
	}
	public List<Collection> getCollectionlist() {
		return collectionlist;
	}
	public void setCollectionlist(List<Collection> collectionlist) {
		this.collectionlist = collectionlist;
	}


	
}
