/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.SupplierAdminMapper;
import com.slicendice.medicare.mapper.VendorAdminMapper;
import com.slicendice.medicare.model.SupplierAdminModel;
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
		SQL = "SELECT * FROM pems_database.supplier_admin ";
		List<VendorAdminModel> records = new ArrayList<VendorAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != vendorName && !vendorName.isEmpty()){
			SQL = SQL + "WHERE Sp_Name LIKE ? ";
			params.add("%"+vendorName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new VendorAdminMapper());
		return records;
	}

	public List<VendorAdminModel> getVendorAdminDetailList(String supplierId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.supplier_admin ";
		List<VendorAdminModel> records = new ArrayList<VendorAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != supplierId && !supplierId.isEmpty()){
			SQL = SQL + "WHERE Sp_id = ?";
			params.add(supplierId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new VendorAdminMapper());
		return records;	}
}
