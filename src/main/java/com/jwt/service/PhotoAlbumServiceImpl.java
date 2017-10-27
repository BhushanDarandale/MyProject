package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jwt.dao.EmployeeDAO;
import com.jwt.dao.PhotoAlbumDAO;
import com.jwt.model.PhotoAlbum;

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
}
