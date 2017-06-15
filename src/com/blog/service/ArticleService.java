package com.blog.service;

import java.util.List;

import com.blog.po.Article;

public interface ArticleService {
	//添加一篇文章
	public void addArticle(Article article);
	
	//删除一篇文章
	public void deleteArticle(Article article);
	
	//更新一篇文章
	public void updateArticle(Article article);
	
	//按查询所有文章
	public List<Article> queryAllArticle();
	
	//查询最新添加的10篇文章
	public List<Article> queryTopTenArticle();
	
	//按ID查询文章
	public Article showArticle(int id);
		
	//按查询文章记录数
	public int showAllCount();

	//按分类查询文章
	public List<Article> queryByCate(int categoryid);
	
	public int queryAllCountByCat(int categoryid);
	
	//按用户查询文章
	public List<Article> queryByUser(String username);
	
	//根据ID查找是否推荐
	public String queryHotByID(int id);
	
	//根据Hot查询所有文章
	public List<Article> queryByhot();
}
