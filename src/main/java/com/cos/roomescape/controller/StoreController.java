package com.cos.roomescape.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jni.FileInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cos.roomescape.model.Store;

@Controller
public class StoreController {
    
     //@PostMapping("/store")
	  @GetMapping("/store")
	public String store(Model model) {
		Store store1 = Store.builder().name("시그널 헌터").info("시그널 헌터 홈대점").intro("시그널 헌터 홍대점").build();
		Store store2 = Store.builder().name("시그널 헌터").info("시그널 헌터 홈대점").intro("시그널 헌터 홍대점").build();
		Store store3 = Store.builder().name("시그널 헌터").info("시그널 헌터 홈대점").intro("시그널 헌터 홍대점").build();
		Store store4 = Store.builder().name("시그널 헌터").info("시그널 헌터 홈대점").intro("시그널 헌터 홍대점").build();
		Store store5 = Store.builder().name("시그널 헌터").info("시그널 헌터 홈대점").intro("시그널 헌터 홍대점").build();
		
		List<Store> stores = new ArrayList<>();
		stores.add(store1);
		stores.add(store2);
		stores.add(store3);
		stores.add(store4);
		stores.add(store5);
		
		model.addAttribute("stores", stores);

		
		return "store";
	}
	  
	@GetMapping("/storeDetail")
	public String storeDetail() {
		return "storeDetail";

	}

}
