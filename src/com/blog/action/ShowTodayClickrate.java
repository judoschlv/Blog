package com.blog.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.blog.po.Clickrate;
import com.blog.service.ClickrateService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowTodayClickrate extends ActionSupport{
	private ClickrateService clickrateService;
	private int i=0 ;
	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public ClickrateService getClickrateService() {
		return clickrateService;
	}

	public void setClickrateService(ClickrateService clickrateService) {
		this.clickrateService = clickrateService;
	}

	@SuppressWarnings({ "unchecked" })
	public String execute()throws Exception{
		System.out.println("=====================================");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String stime = sdf.format(new Date());
		Date time = sdf.parse(stime);
		System.out.println("=====================================");
		List<Clickrate> all=clickrateService.queryByTime(time);
		if(all!=null){
		   i= all.size();
		}else{
	       i=0;
		}
		//for(int j=0;j<all.size();j++){
		//	if(all.get(j).getTime()==time){
		//		 i+=1;
		//	}
		//}
		Map session=ActionContext.getContext().getSession();
		session.put("click",i);
		return super.execute();
	}
}
