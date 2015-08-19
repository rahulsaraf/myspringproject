/**
 * 
 */
package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;


/**
 * @author Rahul
 *
 */
public class EquipmentAdminMapper implements RowMapper<EquipAdminModel>{

	@Override
	public EquipAdminModel mapRow(ResultSet rs, int arg1) throws SQLException {
		EquipAdminModel records = new EquipAdminModel();
		records.setEqp_id(rs.getInt("eqp_id"));
		records.setEqp_Name(rs.getString("eqp_Name"));
		records.setEqp_Desc(rs.getString("eqp_Desc"));
		records.setEqp_Del_Date(rs.getDate("eqp_Del_Date"));
		records.setManf_Name(rs.getString("Manf_Name"));
		records.setVendor_Name(rs.getString("Vendor_Name"));
		records.setSupplier_Name(rs.getString("Supplier_Name"));
		records.setModel_No(rs.getString("Model_No"));
		records.setSerial_No(rs.getString("Serial_No"));
		records.setInt_Asset_no(rs.getString("Int_Asset_no"));
		records.setEquip_Type(rs.getString("Equip_Type"));
		records.setInvoice_No(rs.getString("Invoice_No"));
		records.setEquip_Class(rs.getString("Equip_Class"));
		records.setInvoice_Date(rs.getDate("Invoice_Date"));
		records.setCategory(rs.getString("Category"));
		records.setWrty_Type(rs.getString("Wrty_Type"));
		records.setSub_Ctgry(rs.getString("Sub_Ctgry"));
		records.setWrty_End_Date(rs.getDate("Wrty_End_Date"));
		records.setST_Comp(rs.getString("ST_Comp"));
		records.setDoc_rcvd(rs.getString("Doc_rvcd"));
		records.setEquip_Manuals(rs.getString("Equip_Manuals"));
		records.setService_Manuals(rs.getString("Service_Manuals"));
		records.setOTE_Needed(rs.getString("OTE_Needed"));
		records.setCalib_Certi(rs.getString("Calib_Certi"));
		records.setAccessories(rs.getString("Accessories"));
		records.setTrng_Done(rs.getString("Trng_Done"));
		records.setDept_Trnd(rs.getString("Dept_Trnd"));
		records.setSpares_List(rs.getString("Spares_List"));
		records.setAdd_Re(rs.getString("Add_Re"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		return records;
	}
}