package com.cos.roomescape.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.service.ThemeService;

@Controller

public class ThemeController {
    
	@Autowired
	private ThemeService themeService;
	
	@GetMapping("/theme")
	public String theme() {
		return "theme";
	}
   

	@GetMapping("/themes")
	public String getThemes(Model model) {
		model.addAttribute("themes",themeService.목록보기());
		return "theme";
	}
	
	
	@GetMapping("/themeDetail")
	public String themeDetail() {
		return "themeDetail";

	}
	
}
