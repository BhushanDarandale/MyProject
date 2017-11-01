package com.jwt.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;
import com.jwt.service.VideoService;
import com.jwt.utility.UploadFile;

@Controller
public class VideoController {

	@Autowired
	private	VideoService videoservice;
	
	@RequestMapping(value = "/addVideo", method = RequestMethod.POST, headers = "Accept=application/json")
	public ModelAndView addNewVideo(Model model, @RequestParam("filename1") CommonsMultipartFile multipartFile,
			final HttpServletRequest request) throws IOException {

		Video video= new Video();
		
		if(multipartFile.getSize() !=0){
			String filePath = UploadFile.uploadVideo(multipartFile, request.getParameter("videoname"));
			video.setPath(filePath);
			video.setDate(new Date());
			video.setName(request.getParameter("videoname"));
			video.setStatus("Active");
			video.setTime(new Date());
			video.setTag("babupate");
			video.setType("Video");
			video.setSize("0");
			video.setImage("Not avaliable");
			videoservice.addVideo(video);
			
		}
		
		
		return new ModelAndView("redirect:/loginupdate", "filename", "File Uploaded Successfully");
		
		
		
		
		/*PhotoAlbum album = new PhotoAlbum();
		if (multipartFile.getSize() != 0) {
			String filePath = UploadFile.uploadPhoto(multipartFile, request.getParameter("videoname"));
			album.setAlbumImage(filePath);
			album.setAlbumName(request.getParameter("name"));
			album.setStatus("Active");
			album.setDate(new Date());
			album.setTime(new Date());
			album.setTotalImg(0);
			albumService.addAlbum(album);
		}*/

		/*List<PhotoAlbum> albums = service.getAllAlbums(-1);
		model.addAttribute("Albums", albums);*/
	}
	
	
}
