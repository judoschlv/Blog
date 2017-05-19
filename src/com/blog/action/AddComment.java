package com.blog.action;

import com.blog.po.Comment;
import com.blog.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class AddComment extends ActionSupport{
	//评论昵称
	private String username;
	//评论内容
	private String content;
	//评论文章ID
	private int aid;
	private CommentService commentService;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		Comment comment=new Comment();
		comment.setAid(aid);
		comment.setContent(content);
		comment.setUsername((String) request.getSession().getAttribute("username"));
		commentService.add(comment);
		return this.SUCCESS;
	}

}
