package com.jwt.service;

import java.util.List;

import com.jwt.model.Video;

public interface VideoService {

	boolean addVideo(Video video);

	List<Video> getAllVideos();

	boolean deleteVideo(int parseInt);

}