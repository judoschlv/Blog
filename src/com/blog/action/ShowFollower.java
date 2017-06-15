package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Follow;
import com.blog.service.UserService;
import com.blog.service.FollowService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowFollower extends ActionSupport{
	private FollowService followService;
	private UserService userService;
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public FollowService getFollowService() {
		return followService;
	}

	public void setFollowService(FollowService followService) {
		this.followService = followService;
	}

	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		List<Follow> all=followService.queryByFollowing((String) request.getSession().getAttribute("username"));
		request.setAttribute("allFollower", all);
		return this.SUCCESS;
	}
}






