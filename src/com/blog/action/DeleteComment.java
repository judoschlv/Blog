package com.blog.action;

import com.blog.po.Comment;
import com.blog.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteComment extends ActionSupport{
	private int id;
	private CommentService commentService;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		System.out.println("id----------------"+id);
		Comment comment=new Comment();
		comment=commentService.getWYComment(id);
		System.out.println("comment--------"+comment);
		commentService.delete(comment);
		return this.SUCCESS;
	}
}
