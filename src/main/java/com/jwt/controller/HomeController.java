package com.jwt.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.AlbumPojo;
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
	public ModelAndView listEmployee(ModelAndView model,HttpServletRequest request) throws IOException {

		System.out.println("App Deployed Directory path: " + request.getServletContext().getRealPath(File.separator));
		System.out.println("getContextPath(): " + request.getServletContext().getContextPath());
		System.out.println("Apache Tomcat Server: " + request.getServletContext().getServerInfo());
		System.out.println("Servlet API version: " + request.getServletContext().getMajorVersion() + "."
				+ request.getServletContext().getMinorVersion());
		System.out.println("Tomcat Project Name: " + request.getServletContext().getServletContextName());

		createFile();

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

		List<Photo> photo = albumService.getAllAlbumsPhoto();
		model.addObject("AlbumsPhoto", photo);

		List<AlbumPojo> albumPojos = new ArrayList<>();
		for (PhotoAlbum al : albums) {
			List<Photo> photos = new ArrayList<>();
			AlbumPojo albumPojo = new AlbumPojo();
			for (Photo pho : photo) {
				if (al.getId() == pho.getPhotoAlbum().getId()) {
					photos.add(pho);
				}
			}

			albumPojo.setAlbm(al);
			albumPojo.setPhotos(photos);
			albumPojos.add(albumPojo);
		}
		model.addObject("albumPojos", albumPojos);
		System.out.println(albumPojos);
		return model;
	}

	private void createFile() {
		try {

			File catalinaBase = new File(System.getProperty("catalina.base")).getAbsoluteFile();
			
			File file = new File(catalinaBase + File.separator + "newfile.txt");

			//File file = new File(System.getProperty("user.dir") + File.separator + "newfile.txt");

			if (file.createNewFile()) {
				System.out.println("File is created!");
			} else {
				System.out.println("File already exists.");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
