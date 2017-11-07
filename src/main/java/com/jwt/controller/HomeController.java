package com.jwt.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.News;
import com.jwt.model.Notice;
import com.jwt.model.Personal;
import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;
import com.jwt.service.MainService;
import com.jwt.service.NewsService;
import com.jwt.service.PhotoAlbumService;
import com.jwt.service.VideoService;

@Controller
public class HomeController {
	@Autowired
	private MainService Service;
	
	@Autowired
	
	private NewsService newsService;
	
	
	@Autowired
	private VideoService videoService;
	
	@Autowired
	private PhotoAlbumService albumService;
	
	@RequestMapping(value = "/")
	public ModelAndView listEmployee(ModelAndView model) throws IOException {
		model.setViewName("home");
		
		 List<Video> videos = videoService.getAllVideos();
	        model.addObject("Videos", videos);
		
	        
	        List<News> news = newsService.getAllNews();
	        model.addObject("News", news);
	        
	        
	        List<Notice> notices = newsService.getAllNotice();
	        model.addObject("Notices", notices);
	        
	        
	        List<Personal> personal = videoService.getPersonal();
	        model.addObject("Personal", personal);
		
		
	        List<PhotoAlbum> albums = albumService.getAllAlbums();
	        model.addObject("Albums", albums);
		
		
		
		
		return model;
	}
	
}
