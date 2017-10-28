package com.jwt.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.Photo;
import com.jwt.model.PhotoAlbum;
import com.jwt.service.EmployeeService;
import com.jwt.service.PhotoAlbumService;
import com.jwt.utility.AudioUtility;
import com.jwt.utility.UploadFile;




@Controller
public class PhotoController {
	

	@Autowired
	private PhotoAlbumService albumService;

	@RequestMapping(value = "/photoalbum", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAddAlbum(Model model, final HttpServletRequest request) throws IOException {
		
		return "addPhotoalbum";
	}
		
	@RequestMapping(value = "/addAlbum", method = RequestMethod.POST, headers = "Accept=application/json")
	public ModelAndView getAddAlbum(Model model, @RequestParam("filename") CommonsMultipartFile multipartFile,
			final HttpServletRequest request) throws IOException {

		PhotoAlbum album = new PhotoAlbum();
		if (multipartFile.getSize() != 0) {
			String filePath = uploadAlbum(multipartFile, request.getParameter("name"));
			album.setAlbumImage(filePath);
			album.setAlbumName(request.getParameter("name"));
			album.setStatus("Active");
			album.setDate(new Date());
			album.setTime(new Date());
			album.setTotalImg(0);
			albumService.addAlbum(album);
		}

		/*List<PhotoAlbum> albums = service.getAllAlbums(-1);
		model.addAttribute("Albums", albums);*/
		return new ModelAndView("redirect:/loginupdate", "filename", "File Uploaded Successfully");
	}
	
	
	public static String uploadAlbum(CommonsMultipartFile multipartFile, String albumName) throws IOException {
		String fileName = null;
		String aTempDir = null;
		String fileLocation = null;
		albumName = albumName.replace(' ', '_') + "_" + Calendar.getInstance().get(Calendar.YEAR);
		try {
			aTempDir = System.getProperty("catalina.base") + java.io.File.separator + "webapps" + java.io.File.separator
					+ "Files" + java.io.File.separator + "photo" + java.io.File.separator + albumName;

			// File code
			String nameOfFIle;
			Calendar calendar = Calendar.getInstance();
			Date date = calendar.getTime();
			nameOfFIle = "photo" + date.getTime();
			try {
				String[] originalFileName = multipartFile.getOriginalFilename().split("\\.");
				fileName = originalFileName[0] + nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} catch (Exception e) {
				fileName = multipartFile.getOriginalFilename();
			}

			fileLocation = aTempDir + java.io.File.separator + fileName;
			new java.io.File(aTempDir).mkdirs();

			java.io.File file = new java.io.File(fileLocation);
			FileOutputStream output = new FileOutputStream(file);
			output.write(multipartFile.getBytes());
			output.close();
		} catch (Exception e) {
			return null;
		}
		return "/Files/photo/" + albumName + "/" + fileName;

	}
	
	
	@RequestMapping(value = "/uploadPhoto", method = RequestMethod.POST)
	public ModelAndView upload(@RequestParam("filename") List<CommonsMultipartFile> multipartFile,
			final HttpServletRequest request) throws IOException {

		String albumName = "";
		String albumId = request.getParameter("albumid");
		PhotoAlbum album = null;
		if (StringUtils.isNotBlank(albumId)) {
			int id = Integer.parseInt(albumId);
			album = albumService.getSingleAlbum(id);
			albumName = album.getAlbumName();
		}
		int totalSong = 0;
		String albumimagepath = "/Files/default/default_album.jpg";

		for (CommonsMultipartFile commonsMultipartFile : multipartFile) {
			try {
				String filePath = UploadFile.uploadMusic(commonsMultipartFile, albumName);
				totalSong++;
				Photo music = new Photo();

				if (album != null) {
					music.setAlbumImage(album.getAlbumImage());
					music.setAlbumName(album.getAlbumName());
				}

				music.setDate(new Date());
			/*	music.setDuration(AudioUtility.getDuration(filePath));*/
				/*music.setLink(filePath);*/
				music.setName(commonsMultipartFile.getOriginalFilename());
				music.setPath(filePath);
				music.setSize(commonsMultipartFile.getSize() / 1024 + "");
				music.setStatus("Active");
				music.setTime(new Date());
				music.setTitle(commonsMultipartFile.getOriginalFilename());
				music.setMusicAlbum(album);
				albumService.addPhoto(music);

			} catch (Exception e) {
				System.out.println(e);
			}
		}
		if (album != null) {
			int ts = album.getTotalImg();
			album.setTotalImg(ts + totalSong);
			albumService.updateAlbum(album);
		}
		return new ModelAndView("redirect:/loginupdate", "filename", "File Uploaded Successfully");
	}
}
