package com.blog.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.blog.dao.UserDAO;
import com.blog.po.User;
import com.blog.service.UserService;
import com.blog.service.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator.Success;


@SuppressWarnings("serial")
public class AddUser<UserDao> extends ActionSupport{
	private String username;
	private String password;
	private int type;
	private UserService userService;
	public String getUsername() {
		return username;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	@SuppressWarnings({ "static-access", "unchecked" })
	public String execute()throws Exception{
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);	
		user.setType("游客");
		userService.registerUser(user);
		HttpServletRequest request=ServletActionContext.getRequest();
		if(userService.loginUser(user)){
			request.setAttribute("url", "/WEB-INF/index.jsp");
			request.setAttribute("info", "登录成功");
			@SuppressWarnings("rawtypes")
			Map session=ActionContext.getContext().getSession();
			session.put("username", username);
			session.put("password",password);
			session.put("type",userService.queryType(username));
			return username;
		}else{request.setAttribute("url", "index.jsp");
			request.setAttribute("info", "用户名或密码错误！");
			return ERROR;
		}
	}
}