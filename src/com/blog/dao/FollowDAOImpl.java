package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Article;
import com.blog.po.Follow;

public class FollowDAOImpl extends HibernateDaoSupport implements FollowDAO{
	//添加一则follow
	public void add(Follow follow){
		this.getHibernateTemplate().persist(follow);
	}
	
	//删除一则follow
	public void delete(Follow follow){
		this.getHibernateTemplate().delete(follow);
	}
		
	//更新一则follow
	public void update(Follow follow){
		this.getHibernateTemplate().update(follow);
	}
	
	//查找自己的所有关注
	@SuppressWarnings("unchecked")
	public List<Follow> queryByUser(String following){
		return this.getHibernateTemplate().find("select f from Follow f where folloing=?",following);
		
	}
	
	//查找自己的所有粉丝
	@SuppressWarnings("unchecked")
	public List<Follow> queryByUser2(String follower){
		return this.getHibernateTemplate().find("select f from Follow f where follower=?",follower);
	}
	
	//按following查找follow
	@SuppressWarnings("unchecked")
	public List<Follow> queryByFollowing(String following){
		List<Follow> FollowList=this.getHibernateTemplate().find
				("select f from Follow f where following=?",following);
		if(FollowList.size()>0){
			return FollowList;
		}else{
			return null;
		}
	}
    
	@SuppressWarnings("unchecked")
	public List<Follow> queryByFollower(String follower){
		List<Follow> FollowList=this.getHibernateTemplate().find
				("select f from Follow f where follower=?",follower);
		if(FollowList.size()>0){
			return FollowList;
		}else{
			return null;
		}
	}
	
	//按ID查找follow
	@SuppressWarnings("unchecked")
	public Follow queryByID(int id){
			List<Follow> followList=this.getHibernateTemplate().find
					("select f from Follow f where f.id=?",id);
			if(followList.size()>0){
				return followList.get(0);
			}else{
				return null;
			
		}
	}
	
	
	
}