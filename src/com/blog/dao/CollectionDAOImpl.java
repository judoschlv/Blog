package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Article;
import com.blog.po.Collection;

public class CollectionDAOImpl extends HibernateDaoSupport implements CollectionDAO{
	//添加一则follow
	public void add(Collection collection){
		this.getHibernateTemplate().persist(collection);
	}
	
	//删除一则follow
	public void delete(Collection collection){
		this.getHibernateTemplate().delete(collection);
	}
	
	//按uname查找Collection
	@SuppressWarnings("unchecked")
	public List<Collection> queryByUname(String uname){
		List<Collection> CollectionList=this.getHibernateTemplate().find
				("select c from Collection c where c.uname=?",uname);
		if(CollectionList.size()>0){
			return CollectionList;
		}else{
			return null;
		}
	}
    
	//按follower查找follow
	@SuppressWarnings("unchecked")
	public List<Collection> queryByAid(int aid){
		List<Collection> CollectionList=this.getHibernateTemplate().find
		        ("select c from Collection c where c.aid=?",aid);
        if(CollectionList.size()>0){
	        return CollectionList;
        }else{
	        return null;
        }
    }
	
	//按ID查询Collection
	@SuppressWarnings("unchecked")
	public Collection queryByID(int id){
		List<Collection> collectionList=this.getHibernateTemplate().find
				("select c from Collection c where c.id=?",id);
		if(collectionList.size()>0){
			return collectionList.get(0);
		}else{
			return null;
		}
	}
	
	
}