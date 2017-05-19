package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.User;
public class UserDAOImpl extends HibernateDaoSupport implements UserDAO{
	public void addUser(User user){
		this.getHibernateTemplate().persist(user);
	}
	public void deleteUser(User user){
		this.getHibernateTemplate().delete(user);
	}
	public void updateUser(User user){
		this.getHibernateTemplate().update(user);
	}
	
	@SuppressWarnings("unchecked")
	public List<User> queryAll(){
		return this.getHibernateTemplate().find("select u from User u");
	}
	public User queryByID(String username){
		@SuppressWarnings("unchecked")
		List<User> userList=this.getHibernateTemplate().find(
				"select user from User user where user.username='"+username+"'");
		if(userList.size()>0){
			return 	userList.get(0);
		}else{
			return null;
		}
	}
	public String queryType(String username){
		@SuppressWarnings("unchecked")
		List<User> userList=this.getHibernateTemplate().find(
				"select user from User user where user.username='"+username+"'");
		if(userList.size()>0){
			return 	userList.get(0).getType();
		}else{
			return null;
		}
	}
	
}
