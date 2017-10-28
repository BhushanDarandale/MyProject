package com.jwt.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;

@Repository
public class PhotoAlbumDAOImpl implements PhotoAlbumDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void addAlbum(PhotoAlbum album) {
		sessionFactory.getCurrentSession().saveOrUpdate(album);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PhotoAlbum> getAllAlbums() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from PhotoAlbum")
				.list();
	}

	@Override
	public PhotoAlbum getSingleAlbum(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(PhotoAlbum.class);
		criteria.add(Restrictions.eq("id", id));
		List<PhotoAlbum> musicAlbums = criteria.list();
		if (musicAlbums.size() > 0) {
			return musicAlbums.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Object addPhoto(Photo photo) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.save(photo);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	@Override
	public void updateAlbum(PhotoAlbum photo) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.update(photo);
		} catch (Exception e) {
			session.clear();
		}
		
	}

}
