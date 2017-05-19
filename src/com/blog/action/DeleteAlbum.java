package com.blog.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DeleteAlbum extends ActionSupport{
	private String albumName;

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	
	//删除单个文件
	public boolean deleteFile(String spath){
		boolean flag=false;
		File file=new File(spath);
		if(file.isFile()&&file.exists()){
			file.delete();
			flag=true;
		}
		return flag;
	}
	
	//删除目录
	public boolean deleteDirectory(String spath){
		boolean flag=false;
		//如果sPath不以文件分隔符结尾，自动添加文件分隔符
		if(!spath.endsWith(File.separator)){
			spath=spath+File.separator;
		}
		File dfile=new File(spath);
		//如果不是目录或者不存在则返回
		if(!dfile.exists()||!dfile.isDirectory()){
			return false;
		}
		flag=true;
		File[] files=dfile.listFiles();
		for(int i=0;i<files.length;i++){
			if(files[i].isFile()){
				flag=deleteFile(files[i].getAbsolutePath());
				if(!flag)break;
			}else{
				flag=deleteDirectory(files[i].getAbsolutePath());
				if(!flag)break;
			}
		}
		if(!flag)return false;
		if(dfile.delete()){
			return true;
		}else{
			return false;
		}
	}
	
	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String albumPath=ServletActionContext.getServletContext().getRealPath("/photo/"+this.getAlbumName());
		if(deleteDirectory(albumPath)){
			request.setAttribute("info", "相册"+this.getAlbumName()+"不存在");
		}else{
			request.setAttribute("info", "相册"+this.getAlbumName()+"删除成功");
		}
		return this.SUCCESS;
	}
}
