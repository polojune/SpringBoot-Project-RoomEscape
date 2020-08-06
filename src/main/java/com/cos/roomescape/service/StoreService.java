package com.cos.roomescape.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.StoreRepository;
import com.cos.roomescape.repository.UserRepository;

//Controller,Repository, Configuration,Service,Component
//RestController,Bean

@Service // IOC
public class StoreService {
	@Autowired
	private StoreRepository storeRepository; // DI

	@Transactional
	public void 회원가입(User user) {
		user.setRole("ROLE_USER");
		//userRepository.save(user);

	}

}