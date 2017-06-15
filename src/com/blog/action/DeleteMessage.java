package com.blog.action;

import com.blog.po.Message;
import com.blog.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteMessage extends ActionSupport{
	private int id;
	private MessageService messageService;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public MessageService getMessageService() {
		return messageService;
	}
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		System.out.println("id----------------"+id);
		Message message=new Message();
		message=messageService.queryByID(id);
		messageService.delete(message);
		return this.SUCCESS;
	}
}
