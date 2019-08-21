package com.example.stockspring.service;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import com.example.stockspring.dao.UserDao;
import com.example.stockspring.dao.UserDaoImpl;
import com.example.stockspring.model.Login;
import com.example.stockspring.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDao userDao= new UserDaoImpl();

	@Override
	public boolean registerUser(User user) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("inside userservice");
		return userDao.registerUser(user);
	}

	@Override
	public User loginUser(Login login) throws SQLException {
		// TODO Auto-generated method stub
		return userDao.loginUser(login);
	}

}
