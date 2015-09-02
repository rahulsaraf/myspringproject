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
			SQL = SQL + "WHERE Sp_Name LIKE ? and isactive = ?";
			params.add("%"+supplierName+"%");
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
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
			SQL = SQL + "WHERE Sp_id = ? and isactive = ?";
			params.add(supplierId);
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new SupplierAdminMapper());
		return records;	}

	public int createSupplierAdminRecord(SupplierAdminModel supplierAdminModel) {
		String SQL = "INSERT INTO pems_database.supplier_admin(Sp_Name,Sp_Addr_L1,Sp_Addr_L2,"
				+ "Suburb,Sp_City,Sp_Zip,Sp_Country,Sp_Ct_Name,Sp_Ct_Phone,Alt_phone,Email_ID,"
				+ "IsActive,Created_Date)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return connector.getJdbcTemplateObject().update(SQL,
				supplierAdminModel.getSp_Name(),
				supplierAdminModel.getSp_Addr_L1(),
				supplierAdminModel.getSp_Addr_L2(),
				supplierAdminModel.getSuburb(),
				supplierAdminModel.getSp_City(),
				supplierAdminModel.getSp_Zip(),
				supplierAdminModel.getSp_Country(),
				 supplierAdminModel.getSp_Ct_Fname(),
				supplierAdminModel.getSp_Ct_Phone(),
				supplierAdminModel.getAlt_phone(),
				supplierAdminModel.getEmail_ID(),
				supplierAdminModel.getIsActive(),
				supplierAdminModel.getCreated_Date()
				);
	}

	public int updateSupplierAdminRecord(SupplierAdminModel supplierAdminModel) {
		String SQL = "UPDATE pems_database.supplier_admin SET Sp_Name = ?  ,"
				+ "Sp_Addr_L1 = ?  ,Sp_Addr_L2 = ?  ,Suburb = ?  ,Sp_City = ?  ,Sp_Zip = ?  ,"
				+ "Sp_Country = ? ,Sp_Ct_Name = ?  ,Sp_Ct_Phone = ?  ,Alt_phone = ?  ,Email_ID = ? "
				+ "  WHERE Sp_id = ?  ";
		 return connector.getJdbcTemplateObject().update(SQL, supplierAdminModel.getSp_Name(),
					supplierAdminModel.getSp_Addr_L1(),
					supplierAdminModel.getSp_Addr_L2(),
					supplierAdminModel.getSuburb(),
					supplierAdminModel.getSp_City(),
					supplierAdminModel.getSp_Zip(),
					supplierAdminModel.getSp_Country(),
					supplierAdminModel.getSp_Ct_Fname(),
					supplierAdminModel.getSp_Ct_Phone(),
					supplierAdminModel.getAlt_phone(),
					supplierAdminModel.getEmail_ID(),supplierAdminModel.getSupplierid());
	}

	public int deleteEquipMentAdminRecord(String equipId) {
		String SQL = "UPDATE pems_database.supplier_admin SET IsActive = ?  where Sp_id = ?";
		return connector.getJdbcTemplateObject().update(SQL,0,equipId);
	}
}
