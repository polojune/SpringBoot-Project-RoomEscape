package com.cos.roomescape.controller;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.config.auth.PrincipalDetails;
import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.UserRepository;
//@RestController
@Controller
//@RequestMapping("api/v1")
public class IndexController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("user")
	public String user(Authentication authentication) {
	    PrincipalDetails principal = (PrincipalDetails) authentication.getPrincipal();
		System.out.println("principal:" + principal.getUser().getId());
		System.out.println("principal:" + principal.getUser().getUsername());
		System.out.println("principal:" + principal.getUser().getPassword());
		System.out.println("principal:" + principal.getUser().getRole());
		
		return "<h1>user</h1>";
	}
	 
	
	@GetMapping({ "", "/" })
	public @ResponseBody String home() {
		return "인덱스 페이지";
	}

	@GetMapping("/index")
	public String index() {
		return "index";
	}



	@GetMapping("/book")
	public String book() {
		return "book";
	}

	
	
	@GetMapping("/map")
	public String map() {
		return "map";
	}
	
	@GetMapping("/freeSaveForm")
	public String freeSaveForm() {
		return "freeSaveForm";
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

	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}

//	@PostMapping("/joinProc")
//	public String joinProc(User user) {
//		System.out.println("회원가입 진행 : " + user);
//		String rawPassword = user.getPassword();
//		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
//		user.setPassword(encPassword);
//		user.setRole("ROLE_USER");
//		userRepository.save(user);
//		return "redirect:/";
//
//	}
	@PostMapping("join")
	public String join(@RequestBody User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRole("ROLE_USER");
		userRepository.save(user);
		return "회원가입완료";
	}
	
}
