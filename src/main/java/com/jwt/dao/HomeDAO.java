package com.jwt.dao;

import java.util.List;

import com.jwt.model.Carousel;
import com.jwt.model.Home;

public interface HomeDAO {

	public List<Home> getHome();

	public List<Carousel> getCarousel();
}
