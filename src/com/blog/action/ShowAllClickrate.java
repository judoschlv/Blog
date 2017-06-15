package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.blog.po.Clickrate;
import com.blog.service.ClickrateService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowAllClickrate extends ActionSupport{
	private ClickrateService clickrateService;
	
	public ClickrateService getClickrateService() {
		return clickrateService;
	}

	public void setClickrateService(ClickrateService clickrateService) {
		this.clickrateService = clickrateService;
	}

	@SuppressWarnings({ "static-access" })
	public String execute()throws Exception{
		List<Clickrate> all=clickrateService.queryAllClickrate();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allClickrate", all);
		return this.SUCCESS;
	}
}
