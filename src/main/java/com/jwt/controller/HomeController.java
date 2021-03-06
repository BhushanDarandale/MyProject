package com.jwt.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jwt.model.AlbumPojo;
import com.jwt.model.Carousel;
import com.jwt.model.News;
import com.jwt.model.Notice;
import com.jwt.model.Personal;
import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;
import com.jwt.service.HomeService;
import com.jwt.service.NewsService;
import com.jwt.service.PhotoAlbumService;
import com.jwt.service.VideoService;
@Controller
public class HomeController {
	@Autowired
	private HomeService homeService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private VideoService videoService;
	@Autowired
	private PhotoAlbumService albumService;
	@RequestMapping(value = "/")
	public ModelAndView listEmployee(ModelAndView model,HttpServletRequest request) throws IOException {
		model.setViewName("home");
		List<Carousel> carousels=homeService.getCarousel();
		model.addObject("Carousels", carousels);
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
					photos.add(pho);}}
			albumPojo.setAlbm(al);
			albumPojo.setPhotos(photos);
			albumPojos.add(albumPojo);
		}
		model.addObject("albumPojos", albumPojos);
		System.out.println(albumPojos);
		return model;
	}
}
