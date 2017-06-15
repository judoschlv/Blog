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
	
	//按用户名查询ID2
	public int queryByID2(String username);
	
	//按ID查询用户
	public User queryByI(int id);
	
	//按用户名查询类型
	public String queryType(String username);
	
	//按用户名查找ID
	public int queryID(String username);
	
	//根据ID查找type
    public String queryTypeByID(int id);
}
