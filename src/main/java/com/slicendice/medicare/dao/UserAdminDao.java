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
	
	public List<UserAdminModel> getUserAdminList(String vendorName){
		String SQL;
		SQL = "SELECT * FROM pems_database.vendor_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != vendorName && !vendorName.isEmpty()){
			SQL = SQL + "WHERE Vendor_Name LIKE ? ";
			params.add("%"+vendorName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;
	}

	public List<UserAdminModel> getUserAdminDetailList(String vendorId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.vendor_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != vendorId && !vendorId.isEmpty()){
			SQL = SQL + "WHERE Vendor_id = ?";
			params.add(vendorId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;	}
}
