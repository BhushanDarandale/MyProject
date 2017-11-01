package com.jwt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.News;
import com.jwt.model.PhotoAlbum;
import com.jwt.model.Video;
import com.jwt.service.EmployeeService;
import com.jwt.service.NewsService;
import com.jwt.service.PhotoAlbumService;
import com.jwt.service.VideoService;

@Controller
public class MainController {

	private static final Logger logger = Logger
			.getLogger(MainController.class);

	public MainController() {
		System.out.println("Main Controller");
	}

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	
	private NewsService newsService;
	
	
	@Autowired
	private VideoService videoService;
	
	@Autowired
	private PhotoAlbumService albumService;

	@RequestMapping(value = "/")
	public ModelAndView listEmployee(ModelAndView model) throws IOException {
		/*List<Employee> listEmployee = employeeService.getAllEmployees();
		model.addObject("listEmployee", listEmployee);*/
		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		/*Employee employee = new Employee();
		model.addObject("employee", employee);*/
		model.setViewName("EmployeeForm");
		return model;
	}

	/*@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Employee employee) {
		if (employee.getId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			employeeService.addEmployee(employee);
		} else {
			employeeService.updateEmployee(employee);
		}
		return new ModelAndView("redirect:/");
	}*/

	/*@RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
	public ModelAndView deleteEmployee(HttpServletRequest request) {
		int employeeId = Integer.parseInt(request.getParameter("id"));
		employeeService.deleteEmployee(employeeId);
		return new ModelAndView("redirect:/");
	}*/
 
	/*@RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int employeeId = Integer.parseInt(request.getParameter("id"));
		Employee employee = employeeService.getEmployee(employeeId);
		ModelAndView model = new ModelAndView("EmployeeForm");
		model.addObject("employee", employee);

		return model;
	}*/

	@RequestMapping(value="/login", method=RequestMethod.GET)	
	public ModelAndView login(HttpServletRequest request){
	
		System.out.println("Success login");
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	

	@RequestMapping(value="/loginadmin", method=RequestMethod.GET)	
	public ModelAndView loginadmin(HttpServletRequest request){
		ModelAndView model = null;
		 String name=request.getParameter("uname");  
	        String password=request.getParameter("psw");  
	          
	       /* if(password.equals("a") && name.equals("a")){  
	         
	        HttpSession session=request.getSession();  
	        session.setAttribute("name",name);
	        session.setAttribute("ROLE", "admin");
	        model =  new ModelAndView("homeadmin");
	        
	        request.setAttribute("ROLE", "admin");
	        }  
	        
	        else{  
	        	 model =  new ModelAndView("restricted");   
	        }  */
	        
	        model =  new ModelAndView("homeadmin");
	        List<PhotoAlbum> albums = albumService.getAllAlbums();
	        model.addObject("Albums", albums);
		
	        List<Video> videos = videoService.getAllVideos();
	        model.addObject("Videos", videos);
	        
	        
	        
	        
	        List<News> news = newsService.getAllNews();
	        model.addObject("News", news);
	        
	        
		return model;
		
		
	}
	
	@RequestMapping(value="/loginupdate", method=RequestMethod.GET)	
	public ModelAndView loginupdate(HttpServletRequest request){
		ModelAndView model = null;
		 
	        model = new ModelAndView("homeadmin");
	        
	        request.setAttribute("ROLE", "admin");
	        List<PhotoAlbum> albums = albumService.getAllAlbums();
	        model.addObject("Albums", albums);
	        
	        
	        List<Video> videos = videoService.getAllVideos();
	        model.addObject("Videos", videos);
		
	        
	        List<News> news = newsService.getAllNews();
	        model.addObject("News", news);
		return model;
		
		
	}
	
	
}