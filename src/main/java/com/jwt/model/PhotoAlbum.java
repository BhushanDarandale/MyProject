package com.jwt.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;

/*
 * This is our model class and it corresponds to music_album table in database
 */
@Entity
@Table(name = "photo_album")
public class PhotoAlbum implements Serializable {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "date")
	Date date;

	@Column(name = "time")
	Date time;

	@Column(name = "album_name")
	String albumName;

	@Column(name = "album_image")
	String albumImage;

	@Column(name = "total_img")
	int totalImg;

	@Column(name = "status")
	String status;

	public PhotoAlbum(int id, Date date, Date time, String albumName, String albumImage, String status) {
		super();
		this.id = id;
		this.date = date;
		this.time = time;
		this.albumName = albumName;
		this.albumImage = albumImage;
		this.status = status;
	}

	public PhotoAlbum() {
		super();
	}

	public PhotoAlbum(long l) {
		this.setId(id);
		initialize();
	}

	protected void initialize() {

	}

	public int getTotalImg() {
		return totalImg;
	}

	public void setTotalImg(int totalSongs) {
		this.totalImg = totalSongs;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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