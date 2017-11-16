package com.jwt.model;

import java.util.List;

public class AlbumPojo {

PhotoAlbum albm;
public PhotoAlbum getAlbm() {
	return albm;
}
public void setAlbm(PhotoAlbum albm) {
	this.albm = albm;
}
public List<Photo> getPhotos() {
	return photos;
}
public void setPhotos(List<Photo> photos) {
	this.photos = photos;
}
List<Photo> photos;

	
}
