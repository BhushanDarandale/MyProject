package com.jwt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.PhotoAlbumDAO;
import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;
import com.jwt.service.PhotoAlbumService;
@Service
@Transactional
public class PhotoAlbumServiceImpl implements PhotoAlbumService {

	
	@Autowired
	private PhotoAlbumDAO albumDAO;

	@Override
	public void addAlbum(PhotoAlbum album) {
		// TODO Auto-generated method stub
		albumDAO.addAlbum(album);
	}

	@Override
	public List<PhotoAlbum> getAllAlbums() {
		// TODO Auto-generated method stub
		 return albumDAO.getAllAlbums();
	}

	@Override
	public PhotoAlbum getSingleAlbum(int id) {
		return albumDAO.getSingleAlbum(id);
	}

	@Override
	public void addPhoto(Photo photo) {
		 albumDAO.addPhoto(photo);
		
	}

	@Override
	public void updateAlbum(PhotoAlbum photo) {
		// TODO Auto-generated method stub
		albumDAO.updateAlbum(photo);
	}

	
}
