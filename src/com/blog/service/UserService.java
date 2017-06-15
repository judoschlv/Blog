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
    
    //按用户名查询ID2
	public int queryByID2(String username);
    
    //根据ID查询用户
    public User queryByI(int id);
    
    //更新用户属性
    public void updateUser(User user);
    
    //根据用户名查找ID
    public int queryID(String username);
    
    //根据ID查找type
    public String queryTypeByID(int id);
}
