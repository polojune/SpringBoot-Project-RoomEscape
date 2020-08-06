package com.cos.roomescape.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.service.StoreService;

@Controller
public class StoreController {
    
    @Autowired
    private StoreService storeService;
	
	@GetMapping("/stores")
	public String getStores(Model model) {
		model.addAttribute("stores",storeService.목록보기());
		return "store";
	}
		
	
	@GetMapping("/storeDetail")
	public String storeDetail() {
		return "storeDetail";

	}

}
