package com.blog.service;

import java.util.List;
import com.blog.po.Follow;

public interface FollowService {
        //添加一则关注
		public void addFollow(Follow follow);
		
		//删除一则关注
		public void delete(Follow follow);
		
		//查询自己的所有关注
		public List<Follow> queryByUser(String following);

		//查询自己的所有粉丝
		public List<Follow> queryByUser2(String follower);
		
		//按following查找follow
		public List<Follow> queryByFollowing(String following);
		
		//按follower查找follow
		public List<Follow> queryByFollower(String follower);

		//按ID查找follow
		public Follow queryByID(int id);

}
