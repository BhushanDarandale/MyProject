package com.jwt.service;

import java.util.List;

import com.jwt.model.News;
import com.jwt.model.Notice;

public interface NewsService {

	boolean addNews(News news);

	List<News> getAllNews();

	boolean deleteNews(int parseInt);

	boolean addNotice(Notice notice);

	List<Notice> getAllNotice();

	boolean deleteNotice(int parseInt);

	
}
