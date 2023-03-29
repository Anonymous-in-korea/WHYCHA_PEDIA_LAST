package com.whychapedia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WatchListController {

	@GetMapping("watchList/wishWatch_SY")
	public String wishWatch_SY() {
		return "watchList/wishWatch_SY";
	}
	@GetMapping("watchList/wishWatching_SY")
	public String wishWatching_SY() {
		return "watchList/wishWatching_SY";
	}

}
