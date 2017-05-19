package com.blog.service;

import java.util.List;

import com.blog.dao.ArticleDAO;
import com.blog.po.Article;

public class ArticleServiceImpl implements ArticleService{
	private ArticleDAO articleDAO;
	
	public ArticleDAO getArticleDAO() {
		return articleDAO;
	}

	public void setArticleDAO(ArticleDAO articleDAO) {
		this.articleDAO = articleDAO;
	}
	
	//添加一篇文章
	public void addArticle(Article article){
		articleDAO.add(article);
	}
	
	//删除一篇文章
	public void deleteArticle(Article article){
		articleDAO.delete(article);
	}
	
	//更新一篇文章
	public void updateArticle(Article article){
		articleDAO.update(article);
	}
	
	//按用户查询所有文章
	public List<Article> queryAllArticle(){
		return articleDAO.queryAll();
	}
	
	//查询最新添加的10篇文章
	public List<Article> queryTopTenArticle(){
		return articleDAO.queryTopTen();
	}
	
	//按ID查询文章
	public Article showArticle(int id){
		return articleDAO.queryByID(id);
	}
		
	//按用户查询文章记录数
	public int showAllCount(){
		return articleDAO.queryUserAllCount();
	}

	//按分类查询文章
	public List<Article> queryByCate(int categoryid){
		return articleDAO.queryByCate(categoryid);
	}
	
	public int queryAllCountByCat(int categoryid){
		return articleDAO.queryAllCountByCat(categoryid);
	}
}
