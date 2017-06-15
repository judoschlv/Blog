package com.blog.dao;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.blog.po.Article;
import com.blog.po.Clickrate;

public class ClickrateDAOImpl extends HibernateDaoSupport implements ClickrateDAO {
	@SuppressWarnings({ "rawtypes" })
	public List queryByAid(final int aid,final String ip,final Date time){
		return this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)throws HibernateException,SQLException{
				Query query=session.createQuery("select c from Clickrate c where c.aid=? and c.ip=? and c.time=?");
				query.setParameter(0, aid);
				query.setParameter(1, ip);
				query.setParameter(2, time);
				return query.list();
			}			
		});
	}
	
	public void add(Clickrate clickrate){
		this.getHibernateTemplate().persist(clickrate);
	}
	//按查询所有文章
	@SuppressWarnings("unchecked")
	public List<Clickrate> queryAllClickrate(){
		return this.getHibernateTemplate().find("select a from Clickrate a");
	}
	
	//按IP查询所有访问
	@SuppressWarnings("unchecked")
	public List<Clickrate> queryByIP(String ip){
		List<Clickrate> clickrateList=this.getHibernateTemplate().find
		("select c from Clickrate c where c.ip=?",ip);
             if(clickrateList.size()>0){
	             return clickrateList;
             }else{
	            return null;
             }
	}
	
	 //按date查询访问
	@SuppressWarnings("unchecked")
	public List<Clickrate> queryByTime(Date time){
		List<Clickrate> clickrateList=this.getHibernateTemplate().find
		("select c from Clickrate c where c.time=?",time);
             if(clickrateList.size()>0){
	             return clickrateList;
             }else{
	            return null;
             }
	}
	
}
