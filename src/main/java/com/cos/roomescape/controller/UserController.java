package com.cos.roomescape.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.roomescape.config.auth.PrincipalDetails;
import com.cos.roomescape.dto.CommonRespDto;
import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.UserRepository;
import com.cos.roomescape.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepository;
	
	

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("/admin")
	public @ResponseBody String admin() {
		return "관리자 페이지";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

//	@PostMapping("join")
//	public String join(@RequestBody User user) {
//		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
//		user.setRole("ROLE_USER");
//		userRepository.save(user);
//		return "회원가입완료";
//	}

	@GetMapping("join")
	public String join() {
		return "join";
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

	@GetMapping("/user")
	public String user(Authentication authentication) {
//		PrincipalDetails principal = (PrincipalDetails) authentication.getPrincipal();
//		System.out.println("principal:" + principal.getUser().getId());
//		System.out.println("principal:" + principal.getUser().getUsername());
//		System.out.println("principal:" + principal.getUser().getPassword());
//		System.out.println("principal:" + principal.getUser().getRole());

		return "<h1>user</h1>";
	}

	@PostMapping("/loginProc")
	public @ResponseBody CommonRespDto<?> loginProc(User user, HttpSession session) {

		User persistUser = userService.로그인(user);
		
		if(persistUser == null) {
			System.out.println("널");
			return new CommonRespDto<String>(-1, "로그인 실패");
		}
		
		System.out.println(user.getPassword());
		System.out.println(persistUser.getPassword());
		System.out.println(bCryptPasswordEncoder.matches(user.getPassword(), persistUser.getPassword()));

		if (bCryptPasswordEncoder.matches(user.getPassword(), persistUser.getPassword())) {
			System.out.println("있음");
			// 세션 등록해야함
			session.setAttribute("principal", persistUser);
			return new CommonRespDto<String>(1, "로그인 성공");
		} else {
			System.out.println("없음");
			return new CommonRespDto<String>(-1, "로그인 실패");
		}

//		if (ObjectUtils.isEmpty(persistUser)) {
//			System.out.println("없음");
//			return new CommonRespDto<String>(-1, "로그인 실패");
//		} else {
//			System.out.println("있음");
//			// 세션 등록해야함
//			session.setAttribute("principal", persistUser);
//			return new CommonRespDto<String>(1, "로그인 성공");
//		}

	}
	
	

}
