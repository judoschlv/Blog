package com.blog.action;



import com.blog.po.User;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpdateUser extends ActionSupport{
	private int id;
	private UserService userService;
	private String type;
	private String username;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		User user=new User();
		user=userService.queryByI(id);
		this.setType(user.getType());
		this.setUsername(user.getUsername());
		System.out.println("id-----------------"+id);
		System.out.println("user---------------"+user);
		System.out.println("type---------------"+type);
		System.out.println("username-----------"+username);
		if(this.getType().equals("游客")){
			user.setType("博主");
			System.out.println("=================");
		}else if(this.getType().equals("博主")){
			user.setType("游客");
			System.out.println("-----------------");
		}else{user.setType(
		    user.getType());
		System.out.println("++++++++++++++++");
		}
		userService.updateUser(user);
		return this.SUCCESS;
	}


	
}
