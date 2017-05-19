package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.User;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowUser extends ActionSupport{
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@SuppressWarnings({ "static-access" })	
	public String execute()throws Exception{
		List<User> all=userService.queryAllUser();
		System.out.println(all);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("userList", all);
		return this.SUCCESS;
	}
}
