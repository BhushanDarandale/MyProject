package com.jwt.dao;

import java.util.List;

import com.jwt.model.Video;

public interface VideoDAO {

	boolean addVideo(Video video);

	List<Video> getAllVideos();

}
