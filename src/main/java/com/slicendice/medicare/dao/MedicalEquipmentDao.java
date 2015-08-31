/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.MedicalEquipmentMapper;
import com.slicendice.medicare.model.Equip_Records;


/**
 * @author Rahul
 *
 */
@Service
public class MedicalEquipmentDao {

	@Autowired
	DBConnector connector;
	
	public List<Equip_Records> getMedicalEquipmentList(String serialNo, String assetNo){
		String SQL;
		//SQL = "SELECT * FROM pems_database.equip_records ";
		SQL = "SELECT b.equip_record_id, a.int_asset_no as INT_AST_NO, a.serial_no as SERIAL_NO, a.eqp_name as EQP_NAME, a.eqp_desc as EQP_DESC, a.eqp_del_date as DEL_DATE, a.manf_name as MANUF_NAME, a.vendor_name as VEN_NAME, a.supplier_name as SUPPLIER_NAME, a.model_no as MODEL_NO, a.equip_type as EQP_TYPE, a.invoice_no as INVOICE_NO, a.equip_class as EQP_CLASS, a.invoice_date as INVOICE_DATE, a.category as CATEGORY, a.wrty_type as WARTY_TYPE, a.sub_ctgry as SUB_CTGRY, a.wrty_end_date as WARTY_END_DATE, a.st_comp, a.doc_rvcd, a.equip_manuals, a.service_manuals, a.ote_needed, a.calib_certi, a.accessories, a.trng_done, a.dept_trnd, a.spares_List, a.add_re as ADD_Remarks, b.isactive, b.created_date, b.INDENT_NO, LPO_NO, PRICE_PAID, DEPARTMENT, ROOM_NO, ACTUAL_LOC, c.Sp_Name as SUPPLIER_NAME, c.Sp_Addr_L1 as SUP_ADD_L1, c.Sp_Addr_L2 as SUP_ADD_L2, c.Sp_Ct_Name as Sp_Ct_Fname,c.Sp_Ct_Name as Sp_Ct_Lname, c.Sp_Ct_Phone as SUP_CT_PHONE, c.Alt_phone as ALT_PHONE, c.Email_ID as EMAIL_ID, SP_INV_LIST, SP_MFC_EQP,a.vendor_id,a.supplier_id FROM pems_database.equip_admin a LEFT OUTER JOIN pems_database.equip_records b ON (a.serial_no = b.Serial_No AND a.Int_Asset_no = b.INT_Ast_No) LEFT JOIN pems_database.supplier_admin c ON c.Sp_id = a.supplier_id LEFT JOIN pems_database.vendor_admin d ON d.vendor_id = a.Vendor_id";
		List<Equip_Records> records = new ArrayList<Equip_Records>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + " WHERE a.SERIAL_NO = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + " WHERE a.int_ast_no = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new MedicalEquipmentMapper());
		return records;
	}
	
	public List<Equip_Records> getMedicalEquipmentListFromRecords(String serialNo, String assetNo){
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_records WHERE SERIAL_NO = ?";
		//SQL = "SELECT a.eqp_id, a.int_asset_no as INT_AST_NO, a.serial_no as SERIAL_NO, a.eqp_name as EQP_NAME, a.eqp_desc as EQP_DESC, a.eqp_del_date as DEL_DATE, a.manf_name as MANUF_NAME, a.vendor_name as VEN_NAME, a.supplier_name as SUPPLIER_NAME, a.model_no as MODEL_NO, a.equip_type as EQP_TYPE, a.invoice_no as INVOICE_NO, a.equip_class as EQP_CLASS, a.invoice_date as INVOICE_DATE, a.category as CATEGORY, a.wrty_type as WARTY_TYPE, a.sub_ctgry as SUB_CTGRY, a.wrty_end_date as WARTY_END_DATE, a.st_comp, a.doc_rvcd, a.equip_manuals, a.service_manuals, a.ote_needed, a.calib_certi, a.accessories, a.trng_done, a.dept_trnd, a.spares_List, a.add_re as ADD_Remarks, b.isactive, b.created_date, b.INDENT_NO, LPO_NO, PRICE_PAID, DEPARTMENT, ROOM_NO, ACTUAL_LOC, c.Sp_Name as SUPPLIER_NAME, c.Sp_Addr_L1 as SUP_ADD_L1, c.Sp_Addr_L2 as SUP_ADD_L2, c.Sp_Ct_Name as Sp_Ct_Fname,c.Sp_Ct_Name as Sp_Ct_Lname, c.Sp_Ct_Phone as SUP_CT_PHONE, c.Alt_phone as ALT_PHONE, c.Email_ID as EMAIL_ID, SP_INV_LIST, SP_MFC_EQP FROM pems_database.equip_admin a LEFT OUTER JOIN pems_database.equip_records b ON (a.serial_no = b.Serial_No AND a.Int_Asset_no = b.INT_Ast_No) LEFT JOIN pems_database.supplier_admin c ON c.Sp_id = a.supplier_id LEFT JOIN pems_database.vendor_admin d ON d.vendor_id = a.Vendor_id";
		List<Equip_Records> records = new ArrayList<Equip_Records>();
		List<String> params = new ArrayList<String>();
			params.add(serialNo);
		
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new MedicalEquipmentMapper());
		return records;
	}

	public int updateDetailPage(Equip_Records record) {
		String SQL = "UPDATE pems_database.equip_records SET CATEGORY = ? ,SUB_CTGRY = ? ,Serial_No = ? ,MANUF_NAME = ? ,EQP_NAME = ? ,EQP_DESC = ? ,INT_AST_NO = ? ,EQP_TYPE = ? ,DEL_DATE = ? ,MODEL_NO = ? ,VEN_NAME = ? ,EQP_CLASS = ? ,INVOICE_NO = ? ,INVOICE_DATE = ? ,WARTY_TYPE = ? ,WARTY_END_DATE = ? ,INDENT_NO = ? ,LPO_NO = ? ,PRICE_PAID = ? ,ADD_Remarks = ? ,DEPARTMENT = ? ,ROOM_NO = ? ,ACTUAL_LOC = ? ,SUPPLIER_NAME = ? ,SUP_ADD_L1 = ? ,SUP_ADD_L2 = ? ,Sp_Ct_Fname = ? ,Sp_Ct_Lname = ? ,SUP_CT_PHONE = ? ,ALT_PHONE = ? ,EMAIL_ID = ? ,SP_INV_LIST = ? ,SP_MFC_EQP = ? ,vendor_id = ? ,supplier_id = ?  WHERE equip_record_id = ?";
		return connector.getJdbcTemplateObject().update(SQL,record.getCATEGORY(),record.getSUB_CTGRY(),record.getSERIAL_NO(),record.getMANUF_NAME(),record.getEQP_NAME(),record.getEQP_DESC(),record.getINT_AST_NO(),record.getEQP_TYPE(),record.getDEL_DATE(),record.getMODEL_NO(),record.getVEN_NAME(),record.getEQP_CLASS(),record.getINVOICE_NO(),record.getINVOICE_DATE(),record.getWARTY_TYPE(),record.getWARTY_END_DATE(),record.getINDENT_NO(),record.getLPO_NO(),record.getPRICE_PAID(),record.getADD_Remarks(),record.getDEPARTMENT(),record.getROOM_NO(),record.getACTUAL_LOC(),record.getSUPPLIER_NAME(),record.getSUP_ADD_L1(),record.getSUP_ADD_L2(),record.getSp_Ct_Fname(),record.getSp_Ct_Lname(),record.getSUP_CT_PHONE(),record.getALT_PHONE(),record.getEMAIL_ID(),record.getSP_INV_LIST(),record.getSP_MFC_EQP(),record.getVendorid(),record.getSupplierid(),record.getEquip_record_id());
	}

	public int insertIntoRecords(Equip_Records record) {
		String SQL = "INSERT INTO pems_database.equip_records(CATEGORY,SUB_CTGRY,Serial_No,MANUF_NAME,EQP_NAME,EQP_DESC,INT_AST_NO,EQP_TYPE,DEL_DATE,MODEL_NO,VEN_NAME,EQP_CLASS,INVOICE_NO,INVOICE_DATE,WARTY_TYPE,WARTY_END_DATE,INDENT_NO,LPO_NO,PRICE_PAID,ADD_Remarks,DEPARTMENT,ROOM_NO,ACTUAL_LOC,SUPPLIER_NAME,SUP_ADD_L1,SUP_ADD_L2,Sp_Ct_Fname,Sp_Ct_Lname,SUP_CT_PHONE,ALT_PHONE,EMAIL_ID,SP_INV_LIST,SP_MFC_EQP,IsActive,Created_Date,vendor_id,supplier_id)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		return connector.getJdbcTemplateObject().update(SQL,record.getCATEGORY(),record.getSUB_CTGRY(),record.getSERIAL_NO(),record.getMANUF_NAME(),record.getEQP_NAME(),record.getEQP_DESC(),record.getINT_AST_NO(),record.getEQP_TYPE(),record.getDEL_DATE(),record.getMODEL_NO(),record.getVEN_NAME(),record.getEQP_CLASS(),record.getINVOICE_NO(),record.getINVOICE_DATE(),record.getWARTY_TYPE(),record.getWARTY_END_DATE(),record.getINDENT_NO(),record.getLPO_NO(),record.getPRICE_PAID(),record.getADD_Remarks(),record.getDEPARTMENT(),record.getROOM_NO(),record.getACTUAL_LOC(),record.getSUPPLIER_NAME(),record.getSUP_ADD_L1(),record.getSUP_ADD_L2(),record.getSp_Ct_Fname(),record.getSp_Ct_Lname(),record.getSUP_CT_PHONE(),record.getALT_PHONE(),record.getEMAIL_ID(),record.getSP_INV_LIST(),record.getSP_MFC_EQP(),record.getIsActive(),record.getCreated_Date(),record.getVendorid(),record.getSupplierid());
		
	}
}
