package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.UserMapper;
import com.slicendice.medicare.model.UserAuthModel;

@Service
public class LoginDao {
	@Autowired
	DBConnector connector;
	
	public boolean isvaliduser(String username,String password){
		String SQL;
		SQL = "SELECT * FROM pems_database.userauth ";
		List<UserAuthModel> records = new ArrayList<UserAuthModel>();
		List<String> params = new ArrayList<String>();
		if(null != username && !username.isEmpty()){
			SQL = SQL + "WHERE username = ?";
			params.add(username);
		}else if(null != password && !password.isEmpty()){
			SQL = SQL + "WHERE password = ?";
			params.add(password);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserMapper());
		if(records.size()>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

}
