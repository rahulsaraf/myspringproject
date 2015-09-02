
package com.slicendice.medicare.mapper;

import com.slicendice.medicare.model.Equip_Records;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;


/**
 * @author Rahul
 *
 */
public class MedicalEquipmentMapper implements RowMapper<Equip_Records>{

	@Override
	public Equip_Records mapRow(ResultSet rs, int arg1) throws SQLException {
		Equip_Records records = new Equip_Records();
		//For list page
		records.setSERIAL_NO(rs.getString("SERIAL_NO"));
		records.setINT_AST_NO(rs.getString("INT_AST_NO"));
		records.setEQP_NAME(rs.getString("EQP_NAME"));
		records.setMODEL_NO(rs.getString("MODEL_NO"));
		records.setVEN_NAME(rs.getString("VEN_NAME"));
		records.setSUPPLIER_NAME(rs.getString("SUPPLIER_NAME"));
		records.setROOM_NO(rs.getInt("ROOM_NO"));
		records.setACTUAL_LOC(rs.getString("ACTUAL_LOC"));
		records.setINDENT_NO(rs.getString("INDENT_NO"));
		records.setINVOICE_NO(rs.getString("INVOICE_NO"));
		records.setINVOICE_DATE(rs.getDate("INVOICE_DATE"));
		records.setLPO_NO(rs.getString("LPO_NO"));
		records.setMANUF_NAME(rs.getString("MANUF_NAME"));
		
		//for detail page
		records.setCATEGORY(rs.getString("CATEGORY"));
		records.setSUB_CTGRY(rs.getString("SUB_CTGRY"));
		records.setSERIAL_NO(rs.getString("Serial_No"));
		records.setMANUF_NAME(rs.getString("MANUF_NAME"));
		records.setEQP_NAME(rs.getString("EQP_NAME"));
		records.setEQP_DESC(rs.getString("EQP_DESC"));
		records.setINT_AST_NO(rs.getString("Int_Ast_no"));
		records.setEQP_TYPE(rs.getString("EQP_TYPE"));
		records.setDEL_DATE(rs.getDate("DEL_DATE"));
		records.setMODEL_NO(rs.getString("MODEL_NO"));
		records.setVEN_NAME(rs.getString("VEN_NAME"));
		records.setEQP_CLASS(rs.getString("EQP_CLASS"));
		records.setINVOICE_NO(rs.getString("INVOICE_NO"));
		records.setINVOICE_DATE(rs.getDate("INVOICE_DATE"));
		records.setWARTY_TYPE(rs.getString("WARTY_TYPE"));
		records.setWARTY_END_DATE(rs.getDate("WARTY_END_DATE"));
		records.setINDENT_NO(rs.getString("INDENT_NO"));
		records.setLPO_NO(rs.getString("LPO_NO"));
		records.setPRICE_PAID(rs.getDouble("PRICE_PAID"));
		records.setADD_Remarks(rs.getString("ADD_Remarks"));
		records.setDEPARTMENT(rs.getString("DEPARTMENT"));
		records.setROOM_NO(rs.getInt("ROOM_NO"));
		records.setACTUAL_LOC(rs.getString("ACTUAL_LOC"));
		records.setSUPPLIER_NAME(rs.getString("SUPPLIER_NAME"));
		records.setSUP_ADD_L1(rs.getString("SUP_ADD_L1"));
		records.setSUP_ADD_L2(rs.getString("SUP_ADD_L2"));
		records.setSUP_ADD_L3(rs.getString("SUP_ADD_L3"));
		records.setSp_Ct_Name(rs.getString("Sp_Ct_Name"));
		records.setSp_Ct_Lname(rs.getString("Sp_Ct_Lname"));
		records.setSUP_CT_PHONE(rs.getInt("SUP_CT_PHONE"));
		records.setALT_PHONE(rs.getInt("ALT_PHONE"));
		records.setEMAIL_ID(rs.getString("EMAIL_ID"));
		records.setSP_INV_LIST(rs.getString("SP_INV_LIST"));
		records.setSP_MFC_EQP(rs.getString("SP_MFC_EQP"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		records.setSupplierid(rs.getString("supplier_id"));
		records.setVendorid(rs.getString("vendor_id"));
		records.setEquip_record_id(rs.getInt("equip_record_id"));
		return records;
	}
}