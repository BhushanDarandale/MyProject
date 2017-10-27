package com.jwt.service;

import java.util.List;

import com.jwt.model.PhotoAlbum;

public interface PhotoAlbumService {

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();
	
}
