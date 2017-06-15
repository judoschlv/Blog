package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Article;
import com.blog.po.Comment;

public class ArticleDAOImpl extends HibernateDaoSupport implements ArticleDAO{
	//添加一篇文章
	public void add(Article article){
		this.getHibernateTemplate().persist(article);
	}
	
	//删除一篇文章
	public void delete(Article article){
		this.getHibernateTemplate().delete(article);
	}
	
	//更新一篇文章
	public void update(Article article){
		this.getHibernateTemplate().update(article);
	}
	
	//按用户查询所有文章
	@SuppressWarnings("unchecked")
	public List<Article> queryAll(){
		return this.getHibernateTemplate().find("select a from Article a");
	}
	
	//查询最新的10篇文章、首页用
	@SuppressWarnings("unchecked")
	public List<Article> queryTopTen(){
		return this.getHibernateTemplate().find("select a from Article a order by id desc limit 10");
	}
	
	//按ID查询文章
	@SuppressWarnings("unchecked")
	public Article queryByID(int id){
		List<Article> articleList=this.getHibernateTemplate().find
				("select a from Article a where a.id=?",id);
		if(articleList.size()>0){
			return articleList.get(0);
		}else{
			return null;
		}
	}
	
	//查询文章记录数
	@SuppressWarnings("rawtypes")
	public int queryUserAllCount(){
		List find = this.getHibernateTemplate().find("select count(*) from Article a ");
		return ((Long)find.get(0)).intValue();
	}
	
	//按分类查询文章
	@SuppressWarnings("unchecked")
	public List<Article> queryByCate(int categoryid){
		return this.getHibernateTemplate().find("select a from Article a where categoryid=?",categoryid);
	}
	
	@SuppressWarnings("rawtypes")
	public int queryAllCountByCat(int categoryid){
		List find = this.getHibernateTemplate().find("select count(*) from Article a where categoryid=?",categoryid);
		return ((Long)find.get(0)).intValue();
	}
	
	//根据用户名查询文章
	@SuppressWarnings("unchecked")
	public List queryByUser(String username){
		List<Article> all=this.getHibernateTemplate().find
		("select a from Article a where a.username=?",username);
             if(all.size()>0){
	             return all;
             }else{
	            return null;
             }
    }
	
	//根据ID查找是否推荐
	@SuppressWarnings("unchecked")
	public String queryHotByID(int id){
		List<Article> articleList=this.getHibernateTemplate().find
		("select a from Article a where a.id=?",id);
             if(articleList.size()>0){
	             return articleList.get(0).getHot();
             }else{
	            return null;
             }
	}
	
	//根据Hot查询所有文章
	@SuppressWarnings("unchecked")
	public List<Article> queryByhot(){
			return this.getHibernateTemplate().find("select a from Article a where hot='推荐'");
		}
	
}