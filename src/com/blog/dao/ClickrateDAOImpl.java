package com.blog.dao;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
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
}
