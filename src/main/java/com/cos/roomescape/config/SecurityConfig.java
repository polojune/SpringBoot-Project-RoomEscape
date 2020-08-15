package com.cos.roomescape.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.cos.roomescape.config.jwt.JwtAuthorizationFilter;
import com.cos.roomescape.config.jwt.JwtAuthenticationFilter;
import com.cos.roomescape.config.oauth.PrincipalOauth2UserService;
import com.cos.roomescape.repository.UserRepository;


@Configuration //IoC 빈(bean)을 등록
@EnableWebSecurity // 시큐리티 활성화 -> 기본 스프링 필터체인에 등록
@EnableGlobalMethodSecurity(prePostEnabled = true) //특정 주소 접근시 권한 및 인증을 미리 체크 
public class SecurityConfig extends WebSecurityConfigurerAdapter{
    
	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;
	
	@Autowired
	private UserRepository userRepository;
	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	 @Override
    protected void configure(HttpSecurity http) throws Exception {
          
    	  http.csrf().disable() //form 태그 시 post 요청시 csrf 토큰을 만들어야 서버에서 허가를 해준다.
    	  .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
    	  http.authorizeRequests()
    	      .antMatchers("/user/**").authenticated()
    	      .antMatchers("/api/v1/user/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")	          
	       	  .antMatchers("/api/v1/manager/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")
	          .antMatchers("/api/v1/admin/**").access("hasRole('ROLE_ADMIN')")
	          .anyRequest().permitAll()
	          
          .and()
              //.addFilter(new JwtAuthenticationFilter(authenticationManager()))
              //.addFilter(new JwtAuthorizationFilter(authenticationManager(),userRepository))
          	  .formLogin()
          	  .loginPage("/login")
          	  .loginProcessingUrl("/loginProc")
          	  .defaultSuccessUrl("/")
    	  .and()
    	      .oauth2Login()
    	      .loginPage("/login")
    	      .userInfoEndpoint()
    	      .userService(principalOauth2UserService);
    }
}
