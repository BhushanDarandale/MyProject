package com.jwt.dao;

import java.util.List;

import com.jwt.model.News;

public interface NewsDAO {

	boolean addNews(News news);

	List<News> getAllNews();

	boolean deleteNews(int newsid);

}
