/**
 * 
 */
package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.VideoDAO;
import com.jwt.model.Video;

/**
 * @author Bhushan
 *
 */
@Service
@Transactional
public class VideoServiceImpl implements VideoService {

	@Autowired
	VideoDAO videodao;
	
	@Override
	public boolean addVideo(Video video) {
		// TODO Auto-generated method stub
		videodao.addVideo(video);
		
		return true;
	}

	@Override
	public List<Video> getAllVideos() {
		// TODO Auto-generated method stub
		
		List<Video> list=videodao.getAllVideos();
		return list;
	}

}
