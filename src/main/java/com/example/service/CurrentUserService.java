package com.example.service;

import com.example.bean.CurrentUser;

/**
 *
 */
public interface CurrentUserService {
	
	 boolean canAccessUser(CurrentUser currentUser, Long userId);
}
