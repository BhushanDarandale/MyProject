package com.jwt.service;

import java.util.List;

import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;

public interface PhotoAlbumService {

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();

	public PhotoAlbum getSingleAlbum(int id);

	public void addPhoto(Photo music);

	public void updateAlbum(PhotoAlbum album);
	
}
