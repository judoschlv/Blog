package com.blog.dao;

import java.util.List;

import com.blog.po.Comment;

public interface CommentDAO {
	//添加评论
	public void addComment(Comment comment);
	//删除评论
	public void deleteComment(Comment comment);
	//按文章ID查找指定文章的全部评论
	@SuppressWarnings("rawtypes")
	public List queryByAid(int aid);
	//按ID查找指定文章的指定评论
	public Comment queryById(int id);
	//获取指定文章的评论数
	public int getCommentNum(int aid);
	//获取所有文章的评论
	public List<Comment> queryAll();
}
