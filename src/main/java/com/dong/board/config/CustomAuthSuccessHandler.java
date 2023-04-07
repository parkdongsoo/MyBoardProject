package com.dong.board.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthSuccessHandler implements AuthenticationSuccessHandler{

	private RequestCache requestCache = new HttpSessionRequestCache();
    
	private RedirectStrategy redirectStratgy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
			
			System.out.println(request);
			System.out.println(response);
			System.out.println(authentication);
	        
	        resultRedirectStrategy(request, response, authentication);
	        
	    }
	 
	protected void resultRedirectStrategy(HttpServletRequest request, HttpServletResponse response,
	            Authentication authentication) throws IOException, ServletException {
	        
	        SavedRequest savedRequest = requestCache.getRequest(request, response);
	        System.out.println(savedRequest);
	        if(savedRequest!=null) {
	            String targetUrl = savedRequest.getRedirectUrl();
	            redirectStratgy.sendRedirect(request, response, targetUrl);
	        } else {
	        	
	            redirectStratgy.sendRedirect(request, response, "/");
	        }
	        
	    }
	}
