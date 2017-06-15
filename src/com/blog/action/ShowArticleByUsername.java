package com.blog.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Article;
import com.blog.po.Follow;
import com.blog.po.User;
import com.blog.service.ArticleService;
import com.blog.service.UserService;
import com.blog.service.FollowService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowArticleByUsername extends ActionSupport{
	private String username;
	private ArticleService articleService;
	private UserService userService;
	private FollowService followService;
	public FollowService getFollowService() {
		return followService;
	}
	public void setFollowService(FollowService followService) {
		this.followService = followService;
	}
	public int getF() {
		return f;
	}
	public void setF(int f) {
		this.f = f;
	}
	private int i;
	private int f;
	private int s;
	
	public int getS() {
		return s;
	}
	public void setS(int s) {
		this.s = s;
	}
	public int getI() {
		return i;
	}
	public void setI(int i) {
		this.i = i;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@SuppressWarnings({ "static-access", "unchecked" })
	public String execute()throws Exception{
		List<Article> allbycat=articleService.queryByUser(username);
		List<Follow> followlist=followService.queryByFollower(username);
		List<Follow> followlister=followService.queryByFollowing(username);
		if(allbycat!=null){
			i = allbycat.size();
		}else{
			i = 0;
		}
		if(followlist!=null){
		f = followlist.size();
		}else{
		f = 0;
		}
		if(followlister!=null){
		s = followlister.size();
		}else{
		s = 0;
		}
		
		User user=new User();
		user=userService.queryById(username);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allbycat", allbycat);
		request.setAttribute("cat", user);
		Map session=ActionContext.getContext().getSession();
		session.put("anumber",i);
		session.put("follower", f);
		session.put("following", s);
		session.put("user",username);
		return this.SUCCESS;
	}
}
