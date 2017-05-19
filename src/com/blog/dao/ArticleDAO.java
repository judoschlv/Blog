package com.blog.dao;

import java.util.List;

import com.blog.po.Article;

public interface ArticleDAO {
	//添加一篇文章
	public void add(Article article);
	
	//删除一篇文章
	public void delete(Article article);
	
	//更新一篇文章
	public void update(Article article);
	
	//查询所有文章
	public List<Article> queryAll();
	
	//按ID查询文章
	public Article queryByID(int id);
	
	//查询文章记录数
	public int queryUserAllCount();
	
	//查询最新的10篇文章、首页用
	public List<Article> queryTopTen();
	
	//按分类查询文章
	public List<Article> queryByCate(int categoryid);
	
	//按分类查询文章记录数
	public int queryAllCountByCat(int categoryid);
	
}
