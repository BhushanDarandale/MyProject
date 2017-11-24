package com.jwt.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.Contact;
import com.jwt.model.News;
import com.jwt.model.Notice;
import com.jwt.model.Personal;
import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;
import com.jwt.service.MainService;
import com.jwt.service.NewsService;
import com.jwt.service.PhotoAlbumService;
import com.jwt.service.VideoService;
@Controller
public class MainController {
	public MainController() {
		System.out.println("Main Controller");
	}
	@Autowired
	private MainService Service;
	@Autowired
	private NewsService newsService;
	@Autowired
	private VideoService videoService;
	@Autowired
	private PhotoAlbumService albumService;
	@RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		model.setViewName("EmployeeForm");
		return model;
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		System.out.println("Success login");
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	@RequestMapping(value = "/loginadmin", method = RequestMethod.GET)
	public ModelAndView loginadmin(HttpServletRequest request) {
		ModelAndView model = null;
		String name = request.getParameter("uname");
		String password = request.getParameter("psw");
		model = new ModelAndView("homeadmin");
		List<PhotoAlbum> albums = albumService.getAllAlbums();
		model.addObject("Albums", albums);
		List<Photo> photo = albumService.getAllAlbumsPhoto();
		model.addObject("AlbumsPhoto", photo);
		List<Video> videos = videoService.getAllVideos();
		model.addObject("Videos", videos);
		List<Personal> personal = videoService.getPersonal();
		model.addObject("Personal", personal);
		List<News> news = newsService.getAllNews();
		model.addObject("News", news);
		List<Notice> notices = newsService.getAllNotice();
		model.addObject("Notices", notices);
		return model;
	}
	@RequestMapping(value = "/loginupdate", method = RequestMethod.GET)
	public ModelAndView loginupdate(HttpServletRequest request) {
		ModelAndView model = null;
		model = new ModelAndView("homeadmin");
		request.setAttribute("ROLE", "admin");
		List<PhotoAlbum> albums = albumService.getAllAlbums();
		model.addObject("Albums", albums);
		List<Video> videos = videoService.getAllVideos();
		model.addObject("Videos", videos);
		List<News> news = newsService.getAllNews();
		model.addObject("News", news);
		List<Notice> notices = newsService.getAllNotice();
		model.addObject("Notices", notices);
		List<Personal> personal = videoService.getPersonal();
		model.addObject("Personal", personal);
		return model;
	}
	@RequestMapping(value = "/message", method = RequestMethod.GET)
	public @ResponseBody String processAJAXRequest(@RequestParam("message") String message,
			@RequestParam("mobnumber") String mobnumber, @RequestParam("newname") String name) {
		String response = "";
		Contact contact = new Contact();
		contact.setDate(new Date());
		contact.setName(name);
		contact.setMessage(message);
		contact.setMobile(mobnumber);
		Service.addContact(contact); 
		    
		System.out.println(name);
		return response;
	}
}