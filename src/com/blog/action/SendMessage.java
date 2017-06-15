package com.blog.action;

import com.blog.po.Message;
import com.blog.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class SendMessage extends ActionSupport{
    
	private MessageService messageService;
    private String send;
    private String reply;
    private String neirong;
    
	
	public String getNeirong() {
		return neirong;
	}


	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}


	public String getSend() {
		return send;
	}


	public void setSend(String send) {
		this.send = send;
	}


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


	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		Message message = new Message();
		if((String) request.getSession().getAttribute("username")==null){
			return "login";
		}
		message.setReply(reply);
		message.setSend((String) request.getSession().getAttribute("username"));
		message.setNeirong(neirong);
		messageService.add(message);
		return this.SUCCESS;
	}



}
