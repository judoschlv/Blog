package com.blog.action;

import com.blog.po.Follow;
import com.blog.service.FollowService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteFollow extends ActionSupport{
	private FollowService followService;
	private int id;
	public FollowService getFollowService() {
		return followService;
	}
	public void setFollowService(FollowService followService) {
		this.followService = followService;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		Follow follow = new Follow();
		follow = followService.queryByID(id);
		followService.delete(follow);
		return this.SUCCESS;
			
	}	
}
