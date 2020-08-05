package com.cos.roomescape.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.UserRepository;

@Controller
public class IndexController {
    //dsfa
	@Autowired
	private UserRepository userRepository;
	
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@GetMapping({ "", "/" })
	public @ResponseBody String home() {
		return "인덱스 페이지";
	}
	
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	

	@GetMapping("/theme")
	public String theme() {
		return "theme";
	}
	

	@GetMapping("/book")
	public String book() {
		return "book";
	}
	
	
	@GetMapping("/storeDetail")
	public String storeDetail() {
		return "storeDetail";

	}
	
	
	@GetMapping("/map")
	public String map() {
		return "map";
	}


	@GetMapping("/user")
	public @ResponseBody String user() {
		return "유저 페이지";
	}

	@GetMapping("/admin")
	public @ResponseBody String admin() {
		return "관리자 페이지";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	@GetMapping("/board")
	public String board() {
		return "board";
	}
	
	@GetMapping("/board2")
	public String board2() {
		return "board2";
	}
	
	@GetMapping("/store")
	public String store() {
		return "store";
	}
	
	@PostMapping("/joinProc")
	public String joinProc(User user) {
		System.out.println("회원가입 진행 : " + user);
		String rawPassword = user.getPassword();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRole("ROLE_USER");
		userRepository.save(user);
		return "redirect:/";
	
	}	
}
