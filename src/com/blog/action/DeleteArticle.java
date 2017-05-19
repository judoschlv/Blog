package com.blog.action;


import com.blog.po.Article;
import com.blog.po.Category;
import com.blog.service.ArticleService;
import com.blog.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteArticle extends ActionSupport{
	private int id;
	private ArticleService articleService;
	private CategoryService categoryService;
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
		articleService.deleteArticle(article);
		Category category=new Category();
		category=categoryService.queryByIdCategory(article.getCategoryid());
		category.setArticlenum(category.getArticlenum()-1);
		categoryService.updateCategory(category);
		return this.SUCCESS;
	}


	
}
