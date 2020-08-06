package com.cos.roomescape.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ThemeController {

	
	
	@GetMapping("/theme")
	public String theme() {
		return "theme";
	}

	
	
	@GetMapping("/themeDetail")
	public String themeDetail() {
		return "themeDetail";

	}
	
}
