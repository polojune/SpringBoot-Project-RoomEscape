package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.dto.ReserveThemeRespDto;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.ThemeRepository;

@Controller
@RequestMapping("/reserve/")
public class ReserveController {
	
	@Autowired
	private StoreRepository storeRepository;
	
	@Autowired
	private ThemeRepository themeRepository;
	
	@PostMapping("storelist")
	public @ResponseBody List<ReserveStoreRespDto> getStoreList(String loc) {
		System.out.println("ReserveController: " + loc);
		
		List<ReserveStoreRespDto> reserveDtos = null;
		if (loc.equals("전국")) {
			reserveDtos = storeRepository.findByAllLocation();
		} else {
			reserveDtos = storeRepository.findByLocation(loc);
		}
		return reserveDtos;
	}
	
	
	@PostMapping("themelist")
	public @ResponseBody List<ReserveThemeRespDto> getThemeList(Integer storeId) {
		System.out.println("ReserveController: storeId: " + storeId);
		
		List<ReserveThemeRespDto> reserveDtos = null;

		reserveDtos = themeRepository.findThemeByStoreId(storeId);

		return reserveDtos;
	}

}
