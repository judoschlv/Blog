package com.blog.dao;

import com.blog.po.User;
import java.util.List;

public interface UserDAO {
	//添加用户
	public void addUser(User user);
	
	//删除用户
	public void deleteUser(User user);
	
	//更新用户
	public void updateUser(User user);
	
	//查询所有用户
	@SuppressWarnings("rawtypes")
	public List<User> queryAll();
	
	//按用户名查询用户
	public User queryByID(String username);
	
	//按用户名查询类型
	public String queryType(String username);
}
