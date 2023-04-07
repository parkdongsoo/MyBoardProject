package com.dong.board.config;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

import com.dong.board.service.UserDatailsServiceImpl;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDatailsServiceImpl userDetailsService;
	
	@Autowired
	private AuthenticationFailureHandler customFailureHandler;
	
	@Autowired
	private AuthenticationSuccessHandler customSuccessHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		filter.setForceEncoding(true);
		http.addFilterBefore(filter, CsrfFilter.class);
		
		http.authorizeHttpRequests().antMatchers("/").permitAll();
		http.authorizeHttpRequests().antMatchers("/view/board/write").authenticated();
		http.authorizeHttpRequests().antMatchers("/view/board/update").authenticated();
		http.authorizeHttpRequests().antMatchers("/view/board/delete").hasRole("ADMIN");
		
		http.csrf().disable();
		
		http.formLogin().loginPage("/view/member/login");
		http.formLogin().loginProcessingUrl("/loginAction")
				.usernameParameter("userId").passwordParameter("userPw")
				.successHandler(customSuccessHandler).failureHandler(customFailureHandler);
		http.exceptionHandling().accessDeniedPage("/view/member/accessDenied");
		http.logout().logoutUrl("/logout").logoutSuccessUrl("/");
		
		http.userDetailsService(userDetailsService);
		
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
}
