/**
 * 
 */
package com.example.service;

import java.util.Collection;

import com.example.bean.UserBean;
import com.example.model.User;

/**
 *
 */
public interface UserService {
	
	User getUserById(long id);

    User getUserByEmail(String email);

    Collection<User> getAllUsers();

    User create(UserBean userBean);
}
