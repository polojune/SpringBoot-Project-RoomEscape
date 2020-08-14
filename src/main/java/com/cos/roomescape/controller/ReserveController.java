package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.repository.StoreRepository;

@Controller
@RequestMapping("/reserve/")
public class ReserveController {
	
	@Autowired
	private StoreRepository storeRepository;
	
	@PostMapping("stores")
	public @ResponseBody List<ReserveStoreRespDto> getStoreList(String loc) {
		List<ReserveStoreRespDto> reserveDtos = null;
		if (loc.equals("전국")) {
			reserveDtos = storeRepository.findByAllLocation();
		} else {
			reserveDtos = storeRepository.findByLocation(loc);
		}
		return reserveDtos;
	}

}
