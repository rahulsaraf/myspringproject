package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.LoginDao;
import com.slicendice.medicare.model.UserAdminModel;

@Service
public class LoginService {
	@Autowired
	LoginDao logindao;
	
	public List<UserAdminModel> validateUser(String username, String password){
		return logindao.isvaliduser(username, password);
	}

}
