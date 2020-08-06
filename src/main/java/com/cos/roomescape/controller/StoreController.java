package com.cos.roomescape.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class StoreController {
    

	@GetMapping("/store")
	public String store() {
		return "store";
	}
	
	
	@GetMapping("/storeDetail")
	public String storeDetail() {
		return "storeDetail";

	}

}
