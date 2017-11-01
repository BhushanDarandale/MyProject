/**
 * 
 */
package com.jwt.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
