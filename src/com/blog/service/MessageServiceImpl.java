package com.blog.service;

import java.util.List;

import com.blog.dao.MessageDAO;
import com.blog.po.Message;

public class MessageServiceImpl implements MessageService{
	private MessageDAO messageDAO;
	
	
	public MessageDAO getMessageDAO() {
		return messageDAO;
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

	//添加一篇文章
	public void add(Message message){
		messageDAO.add(message);
	}
	
	//删除一篇文章
	public void delete(Message message){
		messageDAO.delete(message);
	}
	
	//按send查找Message
	public List<Message> queryBySend(String send){
		return messageDAO.queryBySend(send);
	}
	
	//按reply查找Message
	public List<Message> queryByReply(String reply){
		return messageDAO.queryByReply(reply);
	}
	
	//按ID查找message
	public Message queryByID(int id){
		return messageDAO.queryByID(id);
	}
	

}
