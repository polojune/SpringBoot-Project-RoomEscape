package com.cos.roomescape.controller;


import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.config.auth.PrincipalDetails;
import com.cos.roomescape.dto.IndexRespDto;
import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;
import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.UserRepository;
import com.cos.roomescape.service.StoreService;
import com.cos.roomescape.service.ThemeService;


@RestController
public class IndexController {
	
	@Autowired
	private StoreService storeService;
	@Autowired
	private ThemeService themeService;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	
	@GetMapping({ "", "/" })
	public @ResponseBody String home() {
		return "인덱스 페이지";
	}

	@GetMapping("/index")
	public IndexRespDto index() {

		
		IndexRespDto indexRespDto = new IndexRespDto();
		
		List<Store> stores = storeService.가게보기();
		List<Theme> themes = themeService.테마보기();
		
		indexRespDto.setStores(stores);
		indexRespDto.setThemes(themes);
		
		return indexRespDto;
	}



	@GetMapping("/book")
	public String book() {
		return "book";
	}

	
	
	@GetMapping("/map")
	public String map() {
		return "map";
	}

	
	
	    //매니저 접근가능 
		@GetMapping("manager/reports")
		public String reports() {
			return "<h1>reports</h1>";
		}
	

//	@GetMapping("/user")
//	public @ResponseBody String user() {
//		return "유저 페이지";
//	}
		
//	@GetMapping("/user")
//	public @ResponseBody String user(@AuthenticationPrincipal PrincipalDetails principal) {
//		System.out.println("Principal : " + principal);
//		System.out.println("OAuth2 : " + principal.getUser().getProvider());
//		// iterator 순차 출력 해보기
//		Iterator<? extends GrantedAuthority> iter = principal.getAuthorities().iterator();
//		while (iter.hasNext()) {
//			GrantedAuthority auth = iter.next();
//			System.out.println(auth.getAuthority());
//		}
//
//		return "유저 페이지입니다.";
//	}



	@GetMapping("/board")
	public String board() {
		return "board";
	}

	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}
	
	@PostMapping("join")
	public String join(@RequestBody User user) {
		System.out.println("INDEXCONTROLLER");
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRole("ROLE_USER");
		userRepository.save(user);
		return "회원가입완료";
	}

	
}
