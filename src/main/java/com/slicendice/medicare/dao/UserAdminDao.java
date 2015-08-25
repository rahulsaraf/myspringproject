/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.UserAdminMapper;
import com.slicendice.medicare.model.UserAdminModel;



/**
 * @author Rahul
 *
 */
@Service
public class UserAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<UserAdminModel> getUserAdminList(String userName){
		String SQL;
		SQL = "SELECT * FROM pems_database.User_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != userName && !userName.isEmpty()){
			SQL = SQL + "WHERE Usr_Name LIKE ? ";
			params.add("%"+userName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;
	}

	public List<UserAdminModel> getUserAdminDetailList(String loginId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.User_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != loginId && !loginId.isEmpty()){
			SQL = SQL + "WHERE Login_ID = ?";
			params.add(loginId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;	}
}
