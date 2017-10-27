package com.jwt.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
import com.jwt.service.EmployeeService;




@Controller
public class PhotoController {
	
	@Autowired
	private EmployeeService employeeService;

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
			employeeService.addAlbum(album);
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
}
