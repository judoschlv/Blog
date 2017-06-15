package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Comment;
import com.blog.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class GetAllCommentByUser extends ActionSupport{
	private CommentService commentService;
	
	
	public CommentService getCommentService() {
		return commentService;
	}


	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}


	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();	
		List<Comment> all=commentService.queryByUsername((String) request.getSession().getAttribute("username"));
		request.setAttribute("allCommentByUser", all);
		return this.SUCCESS;
	}
}
