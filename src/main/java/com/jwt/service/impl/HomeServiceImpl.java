package com.jwt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jwt.dao.HomeDAO;
import com.jwt.model.Home;
import com.jwt.service.HomeService;

public class HomeServiceImpl implements HomeService {

	
	@Autowired
private HomeDAO homeDAO;
	@Override
	public List<Home> getHome() {
		// TODO Auto-generated method stub
		return homeDAO.getHome();
	}

}
