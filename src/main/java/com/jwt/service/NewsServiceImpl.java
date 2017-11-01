package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.NewsDAO;
import com.jwt.model.News;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsDAO newsDAO;
	@Override
	public boolean addNews(News news) {
		// TODO Auto-generated method stub
		
		newsDAO.addNews(news);
		return true;
	}
	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		
		List<News> news=newsDAO.getAllNews();
		return news;
	}

}
