package com.AlfaFidelReyhan.service;

import javax.validation.Valid;

import com.AlfaFidelReyhan.entity.User;


public interface UserService {
	public User findUserByEmail(String email);
	public void saveUser(@Valid User user);
}
