package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
