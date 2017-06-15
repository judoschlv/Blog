package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Article;
import com.blog.po.Follow;
import com.blog.po.Message;
import com.blog.po.User;
public class MessageDAOImpl extends HibernateDaoSupport implements MessageDAO{
	public void add(Message message){
		this.getHibernateTemplate().persist(message);
	}
	public void delete(Message message){
		this.getHibernateTemplate().delete(message);
	}
	
	//按send查找Message
	@SuppressWarnings("unchecked")
	public List<Message> queryBySend(String send){
		List<Message> MessageList=this.getHibernateTemplate().find
				("select m from Message m where send=?",send);
		if(MessageList.size()>0){
			return MessageList;
		}else{
			return null;
		}
	}
    
	@SuppressWarnings("unchecked")
	public List<Message> queryByReply(String reply){
		List<Message> MessageList=this.getHibernateTemplate().find
				("select m from Message m where reply=?",reply);
		if(MessageList.size()>0){
			return MessageList;
		}else{
			return null;
		}
	}
	//按ID查找message
	@SuppressWarnings("unchecked")
	public Message queryByID(int id){
		List<Message> messageList=this.getHibernateTemplate().find
		     ("select m from Message m where m.id=?",id);
                  if(messageList.size()>0){
	                   return messageList.get(0);
                  }else{
                   	   return null;
                  }
	}
	
}
