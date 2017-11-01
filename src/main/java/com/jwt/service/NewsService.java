package com.jwt.service;

import java.util.List;

import com.jwt.model.News;

public interface NewsService {

	boolean addNews(News news);

	List<News> getAllNews();

}
