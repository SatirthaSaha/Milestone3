package com.example.stockspring.dao;

import com.example.stockspring.model.Login;
import com.example.stockspring.model.UpdateUser;
import com.example.stockspring.model.User;

public interface UserDao {

	public User loginUser(Login login);
	public boolean registerUser(User user);
	public boolean updateUser(UpdateUser user);
	
}
