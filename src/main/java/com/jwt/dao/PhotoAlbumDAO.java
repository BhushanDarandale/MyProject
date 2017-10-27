package com.jwt.dao;

import java.util.List;

import com.jwt.model.PhotoAlbum;

public interface PhotoAlbumDAO {

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();
}
