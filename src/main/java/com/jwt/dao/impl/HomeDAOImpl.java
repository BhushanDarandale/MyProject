package com.jwt.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.dao.HomeDAO;
import com.jwt.model.Carousel;
import com.jwt.model.Home;
@Repository
public class HomeDAOImpl implements HomeDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Home> getHome() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Home.class);
		List<Home> homes=criteria.list();
		return homes;
	}
	@Override
	public List<Carousel> getCarousel() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Carousel.class);
		List<Carousel> carousels=criteria.list();
		return carousels;
	}

}
