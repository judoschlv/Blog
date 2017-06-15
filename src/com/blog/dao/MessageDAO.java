package com.blog.dao;

import java.util.List;

import com.blog.po.Message;

public interface MessageDAO {
	//添加一则私信
	public void add(Message message);
	
	//删除一则私信
	public void delete(Message message);

	//按send查找Message
	public List<Message> queryBySend(String send);
	
	//按reply查找Message
	public List<Message> queryByReply(String reply);
	
	//按ID查找message
	public Message queryByID(int id);
	
}
