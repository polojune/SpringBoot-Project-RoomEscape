package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.dto.ThemeDetailRespDto;
import com.cos.roomescape.model.Theme;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.service.ThemeService;

@RestController

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
	public List<Theme> getThemes() {
		List<Theme> themes = themeService.테마보기();
		
		return themes;
	}
	
	
	@GetMapping("/theme/{id}")
	public ThemeDetailRespDto themeDetail(@PathVariable int id) {
		ThemeDetailRespDto themeDetailRespDto = themeService.상세보기(id);
		return themeDetailRespDto;

	}
	
	
	
//	@GetMapping("/themeDetail")
//	public String themeDetail() {
//		return "themeDetail";
//
//	}
//	
}
