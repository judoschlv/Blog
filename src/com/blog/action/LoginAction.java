package com.blog.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.User;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	private String username;
	private String password;
	private UserService userService;
	private String type;

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUsername() {
		return username;
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
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@SuppressWarnings("unchecked")
	public String execute()throws Exception{
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		HttpServletRequest request=ServletActionContext.getRequest();
		if(userService.loginUser(user)){
			Map session=ActionContext.getContext().getSession();
		    session.put("type",userService.queryType(username));
			session.put("username", username);
			session.put("password", password);
			session.put("id",userService.queryID(username));
			return username;		
		}else{request.setAttribute("url", "index.jsp");
			request.setAttribute("info", "用户名或密码错误！");
			return ERROR;
		}
	}
}
