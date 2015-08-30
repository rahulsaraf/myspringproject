package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.UserAdminMapper;
import com.slicendice.medicare.model.UserAdminModel;


@Service
public class LoginDao {
	@Autowired
	DBConnector connector;
	
	public List<UserAdminModel> isvaliduser(String username,String password){
		String SQL;
		SQL = "SELECT * FROM pems_database.user_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != username && !username.isEmpty() && null != password && !password.isEmpty()){
			SQL = SQL + "WHERE login_id = ?";
			SQL = SQL + " AND password = ?";
			params.add(username);
			params.add(password);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;
	}

}
