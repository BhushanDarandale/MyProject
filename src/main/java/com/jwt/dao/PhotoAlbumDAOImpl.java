package com.jwt.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.jwt.model.PhotoAlbum;

public class PhotoAlbumDAOImpl implements PhotoAlbumDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void addAlbum(PhotoAlbum album) {
		sessionFactory.getCurrentSession().saveOrUpdate(album);
		
	}

	@Override
	public List<PhotoAlbum> getAllAlbums() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from PhotoAlbum")
				.list();
	}

}
