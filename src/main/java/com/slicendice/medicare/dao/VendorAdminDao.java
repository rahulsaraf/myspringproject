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
			SQL = SQL + "WHERE Vendor_Name LIKE ? and isactive = ?";
			params.add("%"+vendorName+"%");
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
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
			SQL = SQL + "WHERE Vendor_id = ? and isactive = ?";
			params.add(vendorId);
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new VendorAdminMapper());
		return records;	
		}
	
	public int createVendorAdminRecord(VendorAdminModel vendorAdminModel) {
		String SQL = "INSERT INTO pems_database.vendor_admin(Vendor_Name,Vendor_Desc,Ven_Addr_l1,"
				+ "Ven_Addr_l2,Ven_Addr_l3,Ven_Country,Ven_Ct_Name,Ven_Ct_Phone,Alt_Phone,Email_ID,"
				+ "Is_Ven_Supp,Is_Ven_Manuf,Is_Ven_Preffd,DVS_Spares,Add_Re,IsActive,Created_Date"
				+ ")VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		 return connector.getJdbcTemplateObject().update(SQL,
				vendorAdminModel.getVendor_Name(),
				vendorAdminModel.getVendor_Desc(),
				vendorAdminModel.getVen_Addr_l1(),
				vendorAdminModel.getVen_Addr_l2(),
				vendorAdminModel.getVen_Addr_l3(),
				vendorAdminModel.getVen_Country(),
				vendorAdminModel.getVen_Ct_Name(),
				vendorAdminModel.getVen_Ct_Phone(),
				vendorAdminModel.getAlt_Phone(),
				vendorAdminModel.getEmail_ID(),
				vendorAdminModel.getIs_Ven_Supp(),
				vendorAdminModel.getIs_Ven_Manuf(),
				vendorAdminModel.getIs_Ven_Preffd(),
				vendorAdminModel.getDVS_Spares(),
				vendorAdminModel.getAdd_Re(),
				vendorAdminModel.getIsActive(),
				vendorAdminModel.getCreated_Date());
	}

	public int updateVendorAdminRecord(VendorAdminModel vendorAdminModel) {
	String SQL = "UPDATE pems_database.vendor_admin SET Vendor_Name = ?  ,Vendor_Desc = ?  ,"
			+ "Ven_Addr_l1 = ?  ,Ven_Addr_l2 = ?  ,Ven_Addr_l3 = ?  ,Ven_Country = ?  ,Ven_Ct_Name = ?  ,"
			+ "Ven_Ct_Phone = ?  ,Alt_Phone = ?  ,Email_ID = ?  ,Is_Ven_Supp = ?  ,Is_Ven_Manuf = ? "
			+ " ,Is_Ven_Preffd = ?  ,DVS_Spares = ?  ,Add_Re = ?  WHERE Vendor_id = ?  ;";
	 return connector.getJdbcTemplateObject().update(SQL,
				vendorAdminModel.getVendor_Name(),
				vendorAdminModel.getVendor_Desc(),
				vendorAdminModel.getVen_Addr_l1(),
				vendorAdminModel.getVen_Addr_l2(),
				vendorAdminModel.getVen_Addr_l3(),
				vendorAdminModel.getVen_Country(),
				vendorAdminModel.getVen_Ct_Name(),
				vendorAdminModel.getVen_Ct_Phone(),
				vendorAdminModel.getAlt_Phone(),
				vendorAdminModel.getEmail_ID(),
				vendorAdminModel.getIs_Ven_Supp(),
				vendorAdminModel.getIs_Ven_Manuf(),
				vendorAdminModel.getIs_Ven_Preffd(),
				vendorAdminModel.getDVS_Spares(),
				vendorAdminModel.getAdd_Re(),vendorAdminModel.getVendorid()
				);
	}

	public int deleteEquipMentAdminRecord(String equipId) {
		String SQL = "UPDATE pems_database.vendor_admin SET IsActive = ?  where Vendor_id = ?";
		return connector.getJdbcTemplateObject().update(SQL,0,equipId);
	}
}
