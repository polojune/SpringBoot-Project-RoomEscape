package com.cos.roomescape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.model.Store;
import com.cos.roomescape.model.Theme;
import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.ThemeRepository;
import com.cos.roomescape.repository.UserRepository;

//Controller,Repository, Configuration,Service,Component
//RestController,Bean

@Service // IOC
public class ThemeService {
	@Autowired
	private ThemeRepository themeRepository; // DI

	@Transactional(readOnly = true)
	public List<Theme> 테마보기() {
        
	  return themeRepository.findAll();
	  
	}
//	@Transactional(readOnly = true)
//	public User 로그인(User user) {
//
//		return userRepository.login(user);
//	}
}