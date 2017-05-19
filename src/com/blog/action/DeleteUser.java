package com.blog.action;



import com.blog.po.User;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteUser extends ActionSupport{
	private String username;
	private UserService userService;
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		User user=new User();
		user=userService.queryById(username);
		userService.deleteUser(user);
		return this.SUCCESS;
	}


	
}
