package com.jwt.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.dao.NewsDAO;
import com.jwt.model.News;
import com.jwt.model.Notice;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean addNews(News news) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(news);
		return true;
	}

	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(News.class);
		List<News> news = criteria.list();
		return news;
	}

	@Override
	public boolean deleteNews(int newsid) {
		// TODO Auto-generated method stub
		News news;
				Session session = this.sessionFactory.getCurrentSession();
				session = sessionFactory.getCurrentSession();
				news = (News)session.load(News.class,newsid);
			    session.delete(news);

			    //This makes the pending delete to be done
			    session.flush() ;
				return true;
	}

	@Override
	public boolean addNotice(Notice notice) {
		sessionFactory.getCurrentSession().saveOrUpdate(notice);
		return true;
	}

	@Override
	public List<Notice> getAllNotice() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Notice.class);
		List<Notice> notices = criteria.list();
		return notices;
		
	}

	@Override
	public boolean deleteNotice(int noticeid) {
		Notice notice;
		Session session = this.sessionFactory.getCurrentSession();
		session = sessionFactory.getCurrentSession();
		notice = (Notice)session.load(Notice.class,noticeid);
	    session.delete(notice);

	    //This makes the pending delete to be done
	    session.flush() ;
		return true;
	}
}
