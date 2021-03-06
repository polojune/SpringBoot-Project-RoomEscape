package com.cos.roomescape.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.dto.ReserveThemeRespDto;
import com.cos.roomescape.dto.ReserveTimeRespDto;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.service.ScheduleService;

@Controller
@RequestMapping("/reserve/")
public class ReserveController {
	
	@Autowired
	private StoreRepository storeRepository;
	
	@Autowired
	private ThemeRepository themeRepository;
	
	@Autowired
	private ScheduleService scheduleService;
	
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
	

	@PostMapping("theme/{themeId}/times")
	public @ResponseBody List<ReserveTimeRespDto> getTimeList(@PathVariable int themeId, String datetime_string) {
		System.out.println("ReserveController: getTimeList(): 테마ID: " + themeId + " " + datetime_string);
		


		//List<ReserveThemeRespDto> scheduleList = scheduleService.특정일시간표가져오기(themeId, datetime_string);
				List<ReserveTimeRespDto> reserveDtos = null;

		List<ReserveTimeRespDto> scheduleList = scheduleService.특정일시간표가져오기(themeId, datetime_string);
		
//		List<ReserveThemeRespDto> reserveDtos = null;
//
//		reserveDtos = themeRepository.findThemeByStoreId(storeId);


		//reserveDtos = themeRepository.findThemeByStoreId(storeId);

		return scheduleList;
	

  }
}