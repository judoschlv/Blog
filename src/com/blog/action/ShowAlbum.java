package com.blog.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowAlbum extends ActionSupport{
	public String execute()throws Exception{
		String photoPath=ServletActionContext.getServletContext().getRealPath("/photo");
		File newFile=new File(photoPath);
		String[] albumList=newFile.list();
		HttpServletRequest request=ServletActionContext.getRequest();
		if(albumList.length==0){
			request.setAttribute("albumList","none");
		}else{
			request.setAttribute("albumList",albumList);
		}
		return super.execute();
	}
}
