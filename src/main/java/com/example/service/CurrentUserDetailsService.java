/**
 * 
 */
package com.example.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.bean.CurrentUser;
import com.example.model.User;

/**
 *
 */
@Service
public class CurrentUserDetailsService implements UserDetailsService {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CurrentUserDetailsService.class);
	
	@Autowired
	UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException {
		LOGGER.warn("Authenticating user with email={}", email.replaceFirst("@.*", "@***"));
		User user = userService.getUserByEmail(email);
		
		LOGGER.warn(user.getEmail());
		LOGGER.warn(user.getPassword());
		LOGGER.warn(String.valueOf(user.getRole()));
		return new CurrentUser (user);
	}

}
