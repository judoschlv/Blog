package com.blog.action;

import java.util.List;

import com.blog.po.Follow;
import com.blog.service.FollowService;
import com.blog.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class AddFollow extends ActionSupport{
	private int id;
	private String following;
	private String follower;
	private String username;
	private String username2;
	private List<Follow> followlist;
	public String getUsername2() {
		return username2;
	}

	public void setUsername2(String username2) {
		this.username2 = username2;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	private FollowService followService;
	private UserService userService;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getFollowing() {
		return following;
	}

	public void setFollowing(String following) {
		this.following = following;
	}

	public String getFollower() {
		return follower;
	}

	public void setFollower(String follower) {
		this.follower = follower;
	}

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

	@SuppressWarnings({ "static-access"})
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		Follow follow=new Follow();
	//	if(followService.queryByFollower(userService.queryByID2((String) request.getSession().getAttribute("username")))==null)
	//	{
	//		System.out.println("关注测试follower获取到了");
	//		
	//	}else{
	//		System.out.println("失败");
	//	}
		if((String)request.getSession().getAttribute("username")==null){
			  return "login";
		}
		if(username2.equals((String)request.getSession().getAttribute("username"))){
			  return "self";
		}
		System.out.println("selffffffffffffffffffffffffffffff");
	   followlist=followService.queryByFollowing((String) request.getSession().getAttribute("username"));
	   System.out.println("listttttttttttttttttttttttttttttttt");
	  if(followlist!=null){
		  System.out.println("jsd0ja0dajsdj90jds90asd");
	   for(int i = 0;i<followlist.size();i++){
		  if(followlist.get(i).getFollower().equals(username2)){
			  System.out.println("已经关注过了!!!!!!!!!!!");
			  return ERROR;
		  }
		  System.out.println(followlist.get(i).getFollower());
		  System.out.println(username2);
	   }
	  }		
		follow.setFollowing((String) request.getSession().getAttribute("username"));
		System.out.println("username------------------"+username);
		follow.setFollower(username2);
		System.out.println("username2-----------------"+username2);
		followService.addFollow(follow);
		return this.SUCCESS;
	}



}
