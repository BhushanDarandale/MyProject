package com.jwt.service;

import java.util.List;

import com.jwt.model.Carousel;
import com.jwt.model.Home;

public interface HomeService {
	public List<Home> getHome();

	public List<Carousel> getCarousel();
}
