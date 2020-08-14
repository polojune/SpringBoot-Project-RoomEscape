package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.model.Theme;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.service.ThemeService;

@Controller

public class ThemeController {
    
	@Autowired
	private ThemeRepository themeRepository;
	
	@Autowired
	private ThemeService themeService;
	
//	@GetMapping("/theme")
//	public String theme() {
//		return "theme";
//	}
//   

	@GetMapping("/theme")
	public List<Theme> getThemes(Model model) {
		List<Theme> themes = themeService.테마보기();
		model.addAttribute("themes",themes);
		return themes;
	}
	
	
	@GetMapping("/theme/{id}")
	public String themeDetail(@PathVariable int id, Model model) {
		model.addAttribute("themeDetailRespDto", themeService.상세보기(id));
		return "themeDetail";

	}
	
	
	
//	@GetMapping("/themeDetail")
//	public String themeDetail() {
//		return "themeDetail";
//
//	}
	
}
