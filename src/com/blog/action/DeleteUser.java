package com.blog.action;



import java.util.List;

import com.blog.po.User;
import com.blog.po.Follow;
import com.blog.service.UserService;
import com.blog.service.FollowService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteUser extends ActionSupport{
	private int id;
	private UserService userService;
	private FollowService followService;
	private List<Follow> followlist;
	private List<Follow> followlist2;
	public List<Follow> getFollowlist() {
		return followlist;
	}
	public void setFollowlist(List<Follow> followlist) {
		this.followlist = followlist;
	}
	public FollowService getFollowService() {
		return followService;
	}
	public void setFollowService(FollowService followService) {
		this.followService = followService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
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
		followlist = followService.queryByFollower(user.getUsername());
		followlist2 = followService.queryByFollowing(user.getUsername());
		if(followlist!=null){
		for(int i = 0;i<followlist.size();i++){
			followService.delete(followlist.get(i));
		}}
		if(followlist2!=null){
		for(int i = 0;i<followlist2.size();i++){
			followService.delete(followlist2.get(i));
	    }}
		System.out.println(user);
		userService.deleteUser(user);
		return this.SUCCESS;
	}


	
}
