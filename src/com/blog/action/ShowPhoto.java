package com.blog.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowPhoto extends ActionSupport{
	private String albumname;

	public String getAlbumname() {
		return albumname;
	}

	public void setAlbumname(String albumname) {
		this.albumname = albumname;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		String photopath=ServletActionContext.getServletContext().getRealPath("/photo/" + albumname);
		File fpath=new File(photopath);
		String[] photoList=fpath.list();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("photoList", photoList);
		request.setAttribute("albumname", albumname);
		return this.SUCCESS;
	}
}
