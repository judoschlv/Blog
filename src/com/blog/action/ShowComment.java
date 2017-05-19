package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Comment;
import com.blog.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowComment extends ActionSupport{
	private int aid;
	private CommentService commentService;
	
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
		List<Comment> articleComment=commentService.getAllComment(aid);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("articleComment", articleComment);
		return this.SUCCESS;
	}
}
