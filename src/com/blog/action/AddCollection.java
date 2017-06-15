package com.blog.action;

import java.util.List;

import com.blog.po.Collection;
import com.blog.service.CollectionService;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class AddCollection extends ActionSupport{
	private int id;
	private String uname;
	private int aid;
	private List<Collection> collectionlist;
	private CollectionService collectionService;
	
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

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
	
	
	@SuppressWarnings({ "static-access"})
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		Collection collection = new Collection();
		uname=(String) request.getSession().getAttribute("username");
		System.out.println(uname);
	  if(uname==null){
		  return "login";
	  }
	   collectionlist=collectionService.queryByUname(uname);
	   System.out.println("listttttttttttttttttttttttttttttttt");
	  if(collectionlist!=null){
		  System.out.println("jsd0ja0dajsdj90jds90asd");
	   for(int i = 0;i<collectionlist.size();i++){
		  if(collectionlist.get(i).getAid()==aid){
			  System.out.println("已经收藏过了!!!!!!!!!!!");
			  return ERROR;
		  }
		  System.out.println(collectionlist.get(i).getAid());
		  System.out.println(uname);
	   }
	  }		
		collection.setUname((String) request.getSession().getAttribute("username"));
		collection.setAid(aid);
		System.out.println("aid-----------------"+aid);
		collectionService.add(collection);
		return this.SUCCESS;
	}



}
