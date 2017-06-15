package com.blog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.blog.po.Collection;
import com.blog.service.CollectionService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteCollection extends ActionSupport{
	private CollectionService collectionService;
	private List<Collection> collectionlist;
	private int id;
	public List<Collection> getCollectionlist() {
		return collectionlist;
	}

	public void setCollectionlist(List<Collection> collectionlist) {
		this.collectionlist = collectionlist;
	}
	
	public CollectionService getCollectionService() {
		return collectionService;
	}

	public void setCollectionService(CollectionService collectionService) {
		this.collectionService = collectionService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		collectionlist=collectionService.queryByUname((String) request.getSession().getAttribute("username"));
		for(int i = 0;i<collectionlist.size();i++){
			if(collectionlist.get(i).getAid()==id){
				collectionService.delete(collectionlist.get(i));
				return SUCCESS;
			}
		}
		return this.ERROR;
			
	}	
}
