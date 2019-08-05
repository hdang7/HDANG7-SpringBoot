/**
 * 
 */
package com.example.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.example.bean.CurrentUser;
import com.example.role.Role;

/**
 *
 */
@Service
public class CurrentUserServiceImpl implements CurrentUserService {

	private static final Logger LOGGER = LoggerFactory.getLogger(CurrentUserDetailsService.class);

    @Override
    public boolean canAccessUser(CurrentUser currentUser, Long userId) {
        LOGGER.debug("Checking if user={} has access to user={}", currentUser, userId);
    	//if (currentUser != null)
        LOGGER.warn(String.valueOf(Role.ADMIN));
        LOGGER.warn(String.valueOf(currentUser.getRole()));
        return currentUser != null
                && (currentUser.getRole() == Role.ADMIN) || currentUser.getId().equals(userId));
        
}

}
