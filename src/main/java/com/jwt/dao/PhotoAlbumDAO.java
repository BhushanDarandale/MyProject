package com.jwt.dao;

import java.util.List;

import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;

public interface PhotoAlbumDAO {

	public void addAlbum(PhotoAlbum album);

	public List<PhotoAlbum> getAllAlbums();

	public PhotoAlbum getSingleAlbum(int id);

	public Object addPhoto(Photo photo);

	public void updateAlbum(PhotoAlbum photo);

	public List<Photo> getAllAlbumsPhoto();
}
