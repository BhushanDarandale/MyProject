package com.jwt.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.jwt.model.Home;

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

}
