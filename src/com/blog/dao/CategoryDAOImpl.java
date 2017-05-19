package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Category;

public class CategoryDAOImpl extends HibernateDaoSupport implements CategoryDAO{
	//添加分类
	public void add(Category category){
		this.getHibernateTemplate().persist(category);
	}
	
	//更新分类
	public void update(Category category){
		this.getHibernateTemplate().saveOrUpdate(category);
	}
	
	//删除分类
	public void delete(Category category){
		this.getHibernateTemplate().delete(category);
	}
	
	//查询所有分类
	@SuppressWarnings("unchecked")
	public List<Category> queryAll(){
		return this.getHibernateTemplate().find("select c from Category c");
	}
	
	//按ID查询分类
	@SuppressWarnings("unchecked")
	public Category queryById(int id){
		List<Category> categoryList=this.getHibernateTemplate().find
				("select c from Category c where id=?",id);
		if(categoryList.size()>0){
			return categoryList.get(0);
		}else{
			return null;
		}
	}
}
