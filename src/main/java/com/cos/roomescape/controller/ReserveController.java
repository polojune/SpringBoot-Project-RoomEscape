package com.cos.roomescape.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.roomescape.dto.ReserveStoreRespDto;
import com.cos.roomescape.repository.StoreRepository;

@Controller
@RequestMapping("/reserve/")
public class ReserveController {
	
	@Autowired
	private StoreRepository storeRepository;
	
	@PostMapping("stores")
	public List<ReserveStoreRespDto> getStoreList(String loc) {
		
		return storeRepository.findByLocation(loc);
	}

}
