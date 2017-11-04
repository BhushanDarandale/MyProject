/**
 * 
 */
package com.jwt.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.dao.VideoDAO;
import com.jwt.model.Personal;
import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;

/**
 * @author Bhushan
 *
 */
@Repository
public class VideoDAOImpl implements VideoDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public boolean addVideo(Video video) {
		// TODO Auto-generated method stub
		
		sessionFactory.getCurrentSession().saveOrUpdate(video);
		
		return true;
	}
	@Override
	public List<Video> getAllVideos() {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Video.class);
		List<Video> videos = criteria.list();
		return videos;
	}
	@Override
	public boolean deleteVideo(int videoid) {
		// TODO Auto-generated method stub
		Video video;
		Session session = this.sessionFactory.getCurrentSession();
		session = sessionFactory.getCurrentSession();
		video = (Video)session.load(Video.class,videoid);
	    session.delete(video);

	    //This makes the pending delete to be done
	    session.flush() ;
		return true;
	}
	@Override
	public List<Personal> getPersonal() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Personal.class);
		List<Personal> personals = criteria.list();
		return personals;
	}
	@Override
	public boolean addPersonal(Personal personal) {
		sessionFactory.getCurrentSession().saveOrUpdate(personal);
		return true;
		
	}

}
