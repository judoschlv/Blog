package com.blog.service;

import java.util.List;

import com.blog.dao.UserDAO;
import com.blog.po.User;

public class UserServiceImpl implements UserService{
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	//用户注册
	public boolean registerUser(User user){
		//判断用户是否存在
		if(userDAO.queryByID(user.getUsername())!=null){
			return false;
		}else{
			userDAO.addUser(user);
			return true;
		}
	}
			
	//用户登陆
	public boolean loginUser(User user){
		if(userDAO.queryByID(user.getUsername())==null){
			return false;
		}else{
			User queryUser=userDAO.queryByID(user.getUsername());
			if(queryUser.getPassword().equals(user.getPassword())){
				return true;
			}else{
				return false;
			}
		}
	}
	
	//查询所有用户
	public List<User> queryAllUser(){
		return userDAO.queryAll();
	}
	
	//根据用户名查找用户
	public String queryType(String username){
		return userDAO.queryByID(username).getType();
	}

	//按用户名查询用户2
	public int queryByID2(String username){
		return userDAO.queryByID2(username);
	}
	//删除用户
	public void deleteUser(User user){
		userDAO.deleteUser(user);
	}
	
    public User queryById(String username){
    	return userDAO.queryByID(username);
    }
	
    public User queryByI(int id){
    	return userDAO.queryByI(id);
    }
    
    //更新用户属性
    public void updateUser(User user){
        userDAO.updateUser(user);
    }
    
    //根据用户名查找ID
    public int queryID(String username){
    	return userDAO.queryByID(username).getId();
    }

    //根据ID查找type
    public String queryTypeByID(int id){
    	return userDAO.queryTypeByID(id);
    }
}
