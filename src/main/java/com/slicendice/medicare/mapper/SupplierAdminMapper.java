/**
 * 
 */
package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;
import com.slicendice.medicare.model.SupplierAdminModel;


/**
 * @author Rahul
 *
 */
public class SupplierAdminMapper implements RowMapper<SupplierAdminModel>{

	@Override
	public SupplierAdminModel mapRow(ResultSet rs, int arg1) throws SQLException {
		SupplierAdminModel records = new SupplierAdminModel();
		records.setSupplierid(rs.getInt("Sp_id"));
		records.setSp_Name(rs.getString("Sp_Name"));
		records.setSp_Addr_L1(rs.getString("Sp_Addr_L1"));
		records.setSp_Addr_L2(rs.getString("Sp_Addr_L2"));
		records.setSuburb(rs.getString("Suburb"));
		records.setSp_City(rs.getString("Sp_City"));
		records.setSp_Zip(rs.getString("Sp_Zip"));
		records.setSp_Country(rs.getString("Sp_Country"));
		records.setSp_Ct_Fname(rs.getString("Sp_Ct_Name"));
		records.setSp_Ct_Phone(rs.getInt("Sp_Ct_Phone"));
		records.setAlt_phone(rs.getInt("Alt_phone"));
		records.setEmail_ID(rs.getString("Email_ID"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		return records;
	}
}