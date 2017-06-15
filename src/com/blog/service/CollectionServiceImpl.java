package com.blog.service;

import java.util.List;

import com.blog.dao.CollectionDAO;
import com.blog.po.Collection;

public class CollectionServiceImpl implements CollectionService{
	private CollectionDAO collectionDAO;
	
	public CollectionDAO getCollectionDAO() {
		return collectionDAO;
	}

	public void setCollectionDAO(CollectionDAO collectionDAO) {
		this.collectionDAO = collectionDAO;
	}

	//添加一则收藏
	public void add(Collection collection){
		 collectionDAO.add(collection);
	}
	
	//删除一则收藏
	public void delete(Collection collection){
		 collectionDAO.delete(collection);
	}

	//按uname查找Collection
	public List<Collection> queryByUname(String uname){
		return collectionDAO.queryByUname(uname);
	}
	
	//按aid查找Collection
	public List<Collection> queryByAid(int aid){
		return collectionDAO.queryByAid(aid);
	}
	
	//按ID查询Collection
	public Collection queryByID(int id){
		return collectionDAO.queryByID(id);
	}
}
