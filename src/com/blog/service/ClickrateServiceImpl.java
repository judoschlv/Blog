package com.blog.service;

import java.util.Date;

import com.blog.dao.ClickrateDAO;
import com.blog.po.Clickrate;

public class ClickrateServiceImpl implements ClickrateService{
	private ClickrateDAO clickrateDAO;
	public ClickrateDAO getClickrateDAO() {
		return clickrateDAO;
	}
	public void setClickrateDAO(ClickrateDAO clickrateDAO) {
		this.clickrateDAO = clickrateDAO;
	}
	//判断是否点击过
	public boolean isVistor(int aid,String ip,Date time){
		if(clickrateDAO.queryByAid(aid, ip, time).size()!=0){
			System.out.println("该IP今天点击过了！");
			return true;
		}else{
			System.out.println("该IP今天没有点击过！");
			Clickrate cl=new Clickrate();
			cl.setAid(aid);
			cl.setIp(ip);
			cl.setTime(time);
			clickrateDAO.add(cl);
			return false;
		}
	}
}
