package com.cos.roomescape.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StroeController {
    

	@GetMapping("/store")
	public String store() {
		return "store";
	}
	
	
	@GetMapping("/storeDetail")
	public String storeDetail() {
		return "storeDetail";

	}

}
