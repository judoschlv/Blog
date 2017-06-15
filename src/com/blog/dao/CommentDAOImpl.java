package com.blog.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Comment;

public class CommentDAOImpl extends HibernateDaoSupport implements CommentDAO {
	//添加评论
	public void addComment(Comment comment){
		this.getHibernateTemplate().persist(comment);
	}
	//删除评论
	public void deleteComment(Comment comment){
		this.getHibernateTemplate().delete(comment);
	}
	//按文章ID查找指定文章的评论
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List queryByAid(int aid){
		List<Comment> all=this.getHibernateTemplate().find
				("select c from Comment c where c.aid=?",aid);
		if(all.size()>0){
			return all;
		}else{
			return null;
		}
	}
	//按ID查找指定文章的指定评论
	@SuppressWarnings("unchecked")
	public Comment queryById(int id){
		List<Comment> allList=this.getHibernateTemplate().find
				("select c from Comment c where id=?",id);
		if(allList.size()>0){
			return allList.get(0);
		}else{
			return null;
		}
	}
	@SuppressWarnings("rawtypes")
	public int getCommentNum(int aid){
		List findNum=this.getHibernateTemplate().find
				("select count(*) from Comment c where c.aid=?",aid);
		return ((Long)findNum.get(0)).intValue();
	}
	
	//获取所有文章的评论
	@SuppressWarnings("unchecked")
	public List<Comment> queryAll(){
		return this.getHibernateTemplate().find("select c from Comment c");
	}
	
	//通过username获得指定文章的评论
	public List<Comment> queryByUsername(String username){
		List<Comment> allList=this.getHibernateTemplate().find
		      ("select c from Comment c where c.username=?",username);
                      if(allList.size()>0){
	                      return allList;
                      }else{
                          return null;
                      }
	}
}
