package com.cos.roomescape.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@GetMapping({ "", "/" })
	public @ResponseBody String index() {
		return "인덱스 페이지";
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
}
