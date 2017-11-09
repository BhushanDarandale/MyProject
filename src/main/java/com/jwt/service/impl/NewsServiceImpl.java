package com.jwt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.NewsDAO;
import com.jwt.model.News;
import com.jwt.model.Notice;
import com.jwt.service.NewsService;

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
	@Override
	public boolean deleteNews(int newsid) {
		
		newsDAO.deleteNews(newsid);
		return true;
		// TODO Auto-generated method stub
	
	}
	@Override
	public boolean addNotice(Notice notice) {
		// TODO Auto-generated method stub
		newsDAO.addNotice(notice);
		return true;
	}
	@Override
	public List<Notice> getAllNotice() {
		// TODO Auto-generated method stub
		
		List<Notice> notices=newsDAO.getAllNotice();
		return notices;
	}
	@Override
	public boolean deleteNotice(int noticeid) {
		newsDAO.deleteNotice(noticeid);
		return true;
	}
	
	
}
