/**
 * 
 */
package com.jwt.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.News;
import com.jwt.service.NewsService;
import com.jwt.utility.UploadFile;

/**
 * @author Bhushan
 *
 */
@Controller
public class NewsController {

	@Autowired
	NewsService newsService;
	
	@RequestMapping( value="/addNews",method=RequestMethod.POST, headers="Accept=application/json")
	public  ModelAndView addNews(Model model,@RequestParam("filenamenews") CommonsMultipartFile multipartFile,final HttpServletRequest request){
		
		News news = new News();
		if(multipartFile.getSize() != 0){
			news.setImage(UploadFile.uploadNewsPhoto(multipartFile));
			news.setTitle(request.getParameter("newsname"));
			news.setDescription(request.getParameter("newsdesc"));
			news.setDate(new Date());
			news.setTime(new Date());
			news.setStatus("Active");
			newsService.addNews(news);
		}
		
		return new ModelAndView("redirect:/loginupdate", "filename", "File Uploaded Successfully");
		
	}
	
	
	
	
	@RequestMapping(value="/deleteNews",method = RequestMethod.POST, headers = "Accept=application/json")
	public ModelAndView deleteNews(Model model ,final HttpServletRequest request){
		
		String newsid=request.getParameter("newsid");
		
	if(newsid != null){
		newsService.deleteNews(Integer.parseInt(newsid));
	}
		
	return new ModelAndView("redirect:/loginupdate", "News", "File deleted Successfully");
		
	}
}
