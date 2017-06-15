package com.blog.service;

import java.util.List;

import com.blog.dao.FollowDAO;
import com.blog.po.Follow;

public class FollowServiceImpl implements FollowService{
	   private FollowDAO followDAO;

	public FollowDAO getFollowDAO() {
		return followDAO;
	}

	public void setFollowDAO(FollowDAO followDAO) {
		this.followDAO = followDAO;
	}
	
	
	 //添加一则关注
	public void addFollow(Follow follow){
		followDAO.add(follow);
	}
	
	//删除一则关注
	public void delete(Follow follow){
		followDAO.delete(follow);
	}
	
	//查询自己的所有关注
	public List<Follow> queryByUser(String following){
		return followDAO.queryByUser(following);
	}

	//查询自己的所有粉丝
	public List<Follow> queryByUser2(String follower){
		return followDAO.queryByUser2(follower);
	}
	
	//按following查找follow
	public List<Follow> queryByFollowing(String following){
		return followDAO.queryByFollowing(following);
	}
	
	//按follower查找follow
	public List<Follow> queryByFollower(String follower){
		return followDAO.queryByFollower(follower);
	}

	//按ID查找follow
	public Follow queryByID(int id){
		return followDAO.queryByID(id);
	}
	
}
