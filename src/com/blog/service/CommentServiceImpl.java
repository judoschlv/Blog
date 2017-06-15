package com.blog.service;

import java.util.List;

import com.blog.dao.CommentDAO;
import com.blog.po.Comment;

public class CommentServiceImpl implements CommentService{
	private CommentDAO commentDAO;
	public CommentDAO getCommentDAO() {
		return commentDAO;
	}
	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
	//添加评论
	public void add(Comment comment){
		commentDAO.addComment(comment);
	}
	//删除评论
	public void delete(Comment comment){
		commentDAO.deleteComment(comment);
	}
	//按文章ID查找指定文章的评论
	@SuppressWarnings("unchecked")
	public List<Comment> getAllComment(int aid){
		List<Comment> commentList=commentDAO.queryByAid(aid);
		return commentList;
	}
	//按ID查找指定文章的指定评论
	public Comment getWYComment(int id){
		return commentDAO.queryById(id);
	}
	//按文章ID查找指定文章的评论数量
	public int getCommentNum(int aid){
		return commentDAO.getCommentNum(aid);
	}
	//查询所有评论
	public List<Comment> getAll(){
		List<Comment> allComment=commentDAO.queryAll();
		return allComment;	
	}
	//通过username获得指定文章的评论
	public List<Comment> queryByUsername(String username){
		return commentDAO.queryByUsername(username);
	}
}
