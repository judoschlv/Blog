package com.blog.service;

import java.util.List;

import com.blog.po.User;

public interface UserService {
	//用户注册
	public boolean registerUser(User user);
		
	//用户登陆
	public boolean loginUser(User user);
	
	//查询所有用户
	public List<User> queryAllUser();
   
	//根据用户名查找用户类型
	public String queryType(String username);
	
	//删除用户
    public void deleteUser(User user);
    
    //根据用户名查找用户2
    public User queryById(String username);
}
