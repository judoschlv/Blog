package com.blog.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddAlbum extends ActionSupport{
	//相册名称
	private String albumName;
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String photoPath=ServletActionContext.getServletContext().getRealPath("/photo/"+albumName);
		File dir=new File(photoPath);
		if(dir.exists()){
			request.setAttribute("info", "该相册已经存在，请更换相册名！");
			return this.ERROR;
		}
		if(!albumName.endsWith(File.separator)){
			albumName=albumName+File.separator;
		}
		if(dir.mkdirs()){
			request.setAttribute("info", "创建相册"+albumName+"成功！");
			return this.SUCCESS;
		}else{
			request.setAttribute("info", "创建相册"+albumName+"失败！");
			return this.ERROR;
		}	
	}
}
