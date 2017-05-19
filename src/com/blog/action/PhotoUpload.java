package com.blog.action;

import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class PhotoUpload extends ActionSupport{
	//相册名称
	private String albumName;
	//上传文件
	private File myFile;
	//文件类型
	private String myFileContentType;
	//文件名称
	private String myFileFileName;
	
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	public File getMyFile() {
		return myFile;
	}
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}
	public String getMyFileContentType() {
		return myFileContentType;
	}
	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}
	public String getMyFileFileName() {
		return myFileFileName;
	}
	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	@SuppressWarnings("static-access")
	public String execute()throws Exception{
		//相册路径
		String photoPath=ServletActionContext.getServletContext().getRealPath("/photo/"+this.getAlbumName());
		//目录对象
		System.out.println("photoPath: "+photoPath);
		if(myFile!=null){
			File savefile=new File(new File(photoPath),myFileFileName);
			if(!savefile.getParentFile().exists()){
				savefile.getParentFile().mkdirs();
			}
			FileUtils.copyFile(myFile, savefile);
		}
		return this.SUCCESS;
	}
}
