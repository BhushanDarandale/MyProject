package com.jwt.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to music table in database
 */
@Entity
@Table(name = "photo")
public class Photo {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "name")
	String name;

	@Column(name = "title")
	String title;

	

	
	
	@Column(name = "date")
	Date date;

	@Column(name = "time")
	Date time;

	

	@Column(name = "path")
	String path;

	

	@Column(name = "size")
	String size;

	@Column(name = "album_name")
	String albumName;

	@Column(name = "album_image")
	String albumImage;

	

	@Column(name = "status")
	String status;

	

	
	
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "album_id")
	PhotoAlbum photoAlbum ;

	public Photo(int id, String name, String title, Date date,
			Date time, String path, String size, String albumName, String albumImage,
			 String status) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.date = date;
		this.time = time;
		this.path = path;
		this.size = size;
		this.albumName = albumName;
		this.albumImage = albumImage;
		this.status = status;
	}

	public Photo() {
		super();
	}

	public PhotoAlbum getPhotoAlbum() {
		return photoAlbum;
	}

	public void setMusicAlbum(PhotoAlbum photoAlbum) {
		this.photoAlbum = photoAlbum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}


	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}


	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getAlbumImage() {
		return albumImage;
	}

	public void setAlbumImage(String albumImage) {
		this.albumImage = albumImage;
	}



	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

}