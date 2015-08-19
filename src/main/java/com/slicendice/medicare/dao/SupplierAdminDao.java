/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.EquipmentAdminMapper;
import com.slicendice.medicare.mapper.SupplierAdminMapper;
import com.slicendice.medicare.model.SupplierAdminModel;


/**
 * @author Rahul
 *
 */
@Service
public class SupplierAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<SupplierAdminModel> getSupplierAdminList(String supplierName){
		String SQL;
		SQL = "SELECT * FROM pems_database.supplier_admin ";
		List<SupplierAdminModel> records = new ArrayList<SupplierAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != supplierName && !supplierName.isEmpty()){
			SQL = SQL + "WHERE Sp_Name LIKE ? ";
			params.add("%"+supplierName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new SupplierAdminMapper());
		return records;
	}

	public List<SupplierAdminModel> getSupplierAdminDetailList(String supplierId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.supplier_admin ";
		List<SupplierAdminModel> records = new ArrayList<SupplierAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != supplierId && !supplierId.isEmpty()){
			SQL = SQL + "WHERE Sp_id = ?";
			params.add(supplierId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new SupplierAdminMapper());
		return records;	}
}
