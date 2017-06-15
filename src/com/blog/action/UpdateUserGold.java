package com.blog.action;



import com.blog.po.User;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpdateUserGold extends ActionSupport{
	private String userna;
	private UserService userService;
	private String username;
	private int gold;
	private int i;

	public int getI() {
		return i;
	}
	public void setI(int i) {
		this.i = i;
	}
	public int getGold() {
		return gold;
	}
	public void setGold(int gold) {
		this.gold = gold;
	}
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

	public String getUserna() {
		return userna;
	}
	public void setUserna(String userna) {
		this.userna = userna;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		User user=new User();
		user=userService.queryById(userna);
		i = user.getGold();
		i+=10;
		user.setGold(i);
		userService.updateUser(user);
		return this.SUCCESS;
	}


	
}
