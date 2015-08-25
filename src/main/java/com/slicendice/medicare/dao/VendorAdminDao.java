/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.VendorAdminMapper;
import com.slicendice.medicare.model.VendorAdminModel;


/**
 * @author Rahul
 *
 */
@Service
public class VendorAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<VendorAdminModel> getVendorAdminList(String vendorName){
		String SQL;
		SQL = "SELECT * FROM pems_database.vendor_admin ";
		List<VendorAdminModel> records = new ArrayList<VendorAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != vendorName && !vendorName.isEmpty()){
			SQL = SQL + "WHERE Vendor_Name LIKE ? ";
			params.add("%"+vendorName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new VendorAdminMapper());
		return records;
	}

	public List<VendorAdminModel> getVendorAdminDetailList(String vendorId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.vendor_admin ";
		List<VendorAdminModel> records = new ArrayList<VendorAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != vendorId && !vendorId.isEmpty()){
			SQL = SQL + "WHERE Vendor_id = ?";
			params.add(vendorId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new VendorAdminMapper());
		return records;	}
}
