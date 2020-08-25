package com.cos.roomescape.config.auth;

import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.cos.roomescape.model.User;
import com.cos.roomescape.repository.UserRepository;

@Service
public class PrincipalDetailsService implements UserDetailsService {
    
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("PrincipalService: 진입");
		System.out.println(username);
		User user = userRepository.findByUsername(username);
	    
		return new PrincipalDetails(user);
	}
         
}
