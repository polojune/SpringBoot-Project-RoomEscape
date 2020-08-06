package com.cos.roomescape.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller

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
