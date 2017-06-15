package com.blog.service;

import java.util.List;

import com.blog.po.Comment;

public interface CommentService {
	//添加评论
	public void add(Comment comment);
	//删除评论
	public void delete(Comment comment);
	//按文章ID查找指定文章的全部评论
	public List<Comment> getAllComment(int aid);
	//按ID查找指定文章的指定评论
	public Comment getWYComment(int id);
	//按文章ID查找指定文章的评论数量
	public int getCommentNum(int aid);
	//查询所有评论
	public List<Comment> getAll();
	//通过username获得指定文章的评论
	public List<Comment> queryByUsername(String username);
}
