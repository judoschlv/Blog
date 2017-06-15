package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Message;
import com.blog.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowMessage extends ActionSupport{
	private String reply;
	private MessageService messageService;
	
	
	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public MessageService getMessageService() {
		return messageService;
	}


	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}


	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Message> message=messageService.queryByReply((String) request.getSession().getAttribute("username"));
		request.setAttribute("message", message);
		return this.SUCCESS;
	}
}
