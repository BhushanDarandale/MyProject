package com.jwt.dao;

import java.util.List;

import com.jwt.model.News;
import com.jwt.model.Notice;

public interface NewsDAO {

	boolean addNews(News news);

	List<News> getAllNews();

	boolean deleteNews(int newsid);

	boolean addNotice(Notice notice);

	List<Notice> getAllNotice();

	boolean deleteNotice(int noticeid);

}
