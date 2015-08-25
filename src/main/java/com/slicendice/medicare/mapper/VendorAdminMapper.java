/**
 * 
 */
package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.VendorAdminModel;


/**
 * @author Rahul
 *
 */
public class VendorAdminMapper implements RowMapper<VendorAdminModel>{

	@Override
	public VendorAdminModel mapRow(ResultSet rs, int arg1) throws SQLException {
		VendorAdminModel records = new VendorAdminModel();
		records.setVendorid(rs.getInt("Vendor_id"));
		records.setVendor_Name(rs.getString("Vendor_Name"));
		records.setVendor_Desc(rs.getString("Vendor_Desc"));
		records.setVen_Addr_l1(rs.getString("Ven_Addr_l1"));
		records.setVen_Addr_l2(rs.getString("Ven_Addr_l2"));
		records.setVen_Addr_l3(rs.getString("Ven_Addr_l3"));
		records.setVen_Country(rs.getString("Ven_Country"));
		records.setVen_Ct_Name(rs.getString("Ven_Ct_Name"));
		records.setVen_Ct_Phone(rs.getString("Ven_Ct_Phone"));
		records.setAlt_Phone(rs.getString("Alt_Phone"));
		records.setEmail_ID(rs.getString("Email_ID"));
		records.setIs_Ven_Supp(rs.getShort("Is_Ven_Supp"));
		records.setIs_Ven_Manuf(rs.getShort("Is_Ven_Manuf"));
		records.setIs_Ven_Preffd(rs.getShort("Is_Ven_Preffd"));
		records.setDVS_Spares(rs.getShort("DVS_Spares"));
		records.setAdd_Re(rs.getString("Add_Re"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		return records;
	}
}