package com.jwt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.HomeDAO;
import com.jwt.model.Carousel;
import com.jwt.model.Home;
import com.jwt.service.HomeService;
@Service
@Transactional
public class HomeServiceImpl implements HomeService {

	
	@Autowired
private HomeDAO homeDAO;
	@Override
	public List<Home> getHome() {
		// TODO Auto-generated method stub
		return homeDAO.getHome();
	}
	@Override
	public List<Carousel> getCarousel() {
		// TODO Auto-generated method stub
		return homeDAO.getCarousel();
	}

}
