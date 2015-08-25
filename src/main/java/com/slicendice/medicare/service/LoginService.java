package com.slicendice.medicare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.LoginDao;

@Service
public class LoginService {
	@Autowired
	LoginDao logindao;
	
	public boolean validateUser(String username, String password){
		return logindao.isvaliduser(username, password);
	}

}
