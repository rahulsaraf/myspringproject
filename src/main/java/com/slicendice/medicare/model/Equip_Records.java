package com.slicendice.medicare.model;

import java.util.Date;

public class Equip_Records {

private String CATEGORY;
private String SUB_CTGRY;
private String SERIAL_NO;
private String MANUF_NAME;
private String EQP_NAME;
private String EQP_DESC;
private String INT_AST_NO;
private String EQP_TYPE;
private Date DEL_DATE;
private String MODEL_NO;
private String VEN_NAME;
private String EQP_CLASS;
private String INVOICE_NO;
private Date INVOICE_DATE;
private String WARTY_TYPE;
private Date WARTY_END_DATE;
private String INDENT_NO;
private String LPO_NO;
private double PRICE_PAID;
private String ADD_Remarks;
private String DEPARTMENT;
private int ROOM_NO;
private String ACTUAL_LOC;
private String SUPPLIER_NAME;
private String SUP_ADD_L1;
private String SUP_ADD_L2;
private String Sp_Ct_Fname;
private String Sp_Ct_Lname;
private int SUP_CT_PHONE;
private int ALT_PHONE;
private String EMAIL_ID;
private String SP_INV_LIST;
private String SP_MFC_EQP;
private short IsActive;
private Date Created_Date;
private String vendorid;
private String supplierid;
private int equip_record_id;

public int getEquip_record_id() {
	return equip_record_id;
}

public void setEquip_record_id(int equip_record_id) {
	this.equip_record_id = equip_record_id;
}

public String getVendorid() {
	return vendorid;
}

public void setVendorid(String vendorid) {
	this.vendorid = vendorid;
}

public String getSupplierid() {
	return supplierid;
}

public void setSupplierid(String supplierid) {
	this.supplierid = supplierid;
}

public Equip_Records()
{
	
}

public Equip_Records(String cATEGORY, String sUB_CTGRY, String sERIAL_NO,
		String mANUF_NAME, String eQP_NAME, String eQP_DESC, String iNT_AST_NO,
		String eQP_TYPE, Date dEL_DATE, String mODEL_NO, String vEN_NAME,
		String eQP_CLASS, String iNVOICE_NO, Date iNVOICE_DATE,
		String wARTY_TYPE, Date wARTY_END_DATE, String iNDENT_NO,
		String lPO_NO, double pRICE_PAID, String aDD_Remarks,
		String dEPARTMENT, int rOOM_NO, String aCTUAL_LOC,
		String sUPPLIER_NAME, String sUP_ADD_L1, String sUP_ADD_L2,
		String sp_Ct_Fname, String sp_Ct_Lname, int sUP_CT_PHONE,
		int aLT_PHONE, String eMAIL_ID, String sP_INV_LIST, String sP_MFC_EQP,
		short isActive, Date created_Date) {
	super();
	CATEGORY = cATEGORY;
	SUB_CTGRY = sUB_CTGRY;
	SERIAL_NO = sERIAL_NO;
	MANUF_NAME = mANUF_NAME;
	EQP_NAME = eQP_NAME;
	EQP_DESC = eQP_DESC;
	INT_AST_NO = iNT_AST_NO;
	EQP_TYPE = eQP_TYPE;
	DEL_DATE = dEL_DATE;
	MODEL_NO = mODEL_NO;
	VEN_NAME = vEN_NAME;
	EQP_CLASS = eQP_CLASS;
	INVOICE_NO = iNVOICE_NO;
	INVOICE_DATE = iNVOICE_DATE;
	WARTY_TYPE = wARTY_TYPE;
	WARTY_END_DATE = wARTY_END_DATE;
	INDENT_NO = iNDENT_NO;
	LPO_NO = lPO_NO;
	PRICE_PAID = pRICE_PAID;
	ADD_Remarks = aDD_Remarks;
	DEPARTMENT = dEPARTMENT;
	ROOM_NO = rOOM_NO;
	ACTUAL_LOC = aCTUAL_LOC;
	SUPPLIER_NAME = sUPPLIER_NAME;
	SUP_ADD_L1 = sUP_ADD_L1;
	SUP_ADD_L2 = sUP_ADD_L2;
	Sp_Ct_Fname = sp_Ct_Fname;
	Sp_Ct_Lname = sp_Ct_Lname;
	SUP_CT_PHONE = sUP_CT_PHONE;
	ALT_PHONE = aLT_PHONE;
	EMAIL_ID = eMAIL_ID;
	SP_INV_LIST = sP_INV_LIST;
	SP_MFC_EQP = sP_MFC_EQP;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getCATEGORY() {
	return CATEGORY;
}

public void setCATEGORY(String cATEGORY) {
	CATEGORY = cATEGORY;
}

public String getSUB_CTGRY() {
	return SUB_CTGRY;
}

public void setSUB_CTGRY(String sUB_CTGRY) {
	SUB_CTGRY = sUB_CTGRY;
}

public String getSERIAL_NO() {
	return SERIAL_NO;
}

public void setSERIAL_NO(String sERIAL_NO) {
	SERIAL_NO = sERIAL_NO;
}

public String getMANUF_NAME() {
	return MANUF_NAME;
}

public void setMANUF_NAME(String mANUF_NAME) {
	MANUF_NAME = mANUF_NAME;
}

public String getEQP_NAME() {
	return EQP_NAME;
}

public void setEQP_NAME(String eQP_NAME) {
	EQP_NAME = eQP_NAME;
}

public String getEQP_DESC() {
	return EQP_DESC;
}

public void setEQP_DESC(String eQP_DESC) {
	EQP_DESC = eQP_DESC;
}

public String getINT_AST_NO() {
	return INT_AST_NO;
}

public void setINT_AST_NO(String iNT_AST_NO) {
	INT_AST_NO = iNT_AST_NO;
}

public String getEQP_TYPE() {
	return EQP_TYPE;
}

public void setEQP_TYPE(String eQP_TYPE) {
	EQP_TYPE = eQP_TYPE;
}

public Date getDEL_DATE() {
	return DEL_DATE;
}

public void setDEL_DATE(Date dEL_DATE) {
	DEL_DATE = dEL_DATE;
}

public String getMODEL_NO() {
	return MODEL_NO;
}

public void setMODEL_NO(String mODEL_NO) {
	MODEL_NO = mODEL_NO;
}

public String getVEN_NAME() {
	return VEN_NAME;
}

public void setVEN_NAME(String vEN_NAME) {
	VEN_NAME = vEN_NAME;
}

public String getEQP_CLASS() {
	return EQP_CLASS;
}

public void setEQP_CLASS(String eQP_CLASS) {
	EQP_CLASS = eQP_CLASS;
}

public String getINVOICE_NO() {
	return INVOICE_NO;
}

public void setINVOICE_NO(String iNVOICE_NO) {
	INVOICE_NO = iNVOICE_NO;
}

public Date getINVOICE_DATE() {
	return INVOICE_DATE;
}

public void setINVOICE_DATE(Date iNVOICE_DATE) {
	INVOICE_DATE = iNVOICE_DATE;
}

public String getWARTY_TYPE() {
	return WARTY_TYPE;
}

public void setWARTY_TYPE(String wARTY_TYPE) {
	WARTY_TYPE = wARTY_TYPE;
}

public Date getWARTY_END_DATE() {
	return WARTY_END_DATE;
}

public void setWARTY_END_DATE(Date wARTY_END_DATE) {
	WARTY_END_DATE = wARTY_END_DATE;
}

public String getINDENT_NO() {
	return INDENT_NO;
}

public void setINDENT_NO(String iNDENT_NO) {
	INDENT_NO = iNDENT_NO;
}

public String getLPO_NO() {
	return LPO_NO;
}

public void setLPO_NO(String lPO_NO) {
	LPO_NO = lPO_NO;
}

public double getPRICE_PAID() {
	return PRICE_PAID;
}

public void setPRICE_PAID(double pRICE_PAID) {
	PRICE_PAID = pRICE_PAID;
}

public String getADD_Remarks() {
	return ADD_Remarks;
}

public void setADD_Remarks(String aDD_Remarks) {
	ADD_Remarks = aDD_Remarks;
}

public String getDEPARTMENT() {
	return DEPARTMENT;
}

public void setDEPARTMENT(String dEPARTMENT) {
	DEPARTMENT = dEPARTMENT;
}

public int getROOM_NO() {
	return ROOM_NO;
}

public void setROOM_NO(int rOOM_NO) {
	ROOM_NO = rOOM_NO;
}

public String getACTUAL_LOC() {
	return ACTUAL_LOC;
}

public void setACTUAL_LOC(String aCTUAL_LOC) {
	ACTUAL_LOC = aCTUAL_LOC;
}

public String getSUPPLIER_NAME() {
	return SUPPLIER_NAME;
}

public void setSUPPLIER_NAME(String sUPPLIER_NAME) {
	SUPPLIER_NAME = sUPPLIER_NAME;
}

public String getSUP_ADD_L1() {
	return SUP_ADD_L1;
}

public void setSUP_ADD_L1(String sUP_ADD_L1) {
	SUP_ADD_L1 = sUP_ADD_L1;
}

public String getSUP_ADD_L2() {
	return SUP_ADD_L2;
}

public void setSUP_ADD_L2(String sUP_ADD_L2) {
	SUP_ADD_L2 = sUP_ADD_L2;
}

public String getSp_Ct_Fname() {
	return Sp_Ct_Fname;
}

public void setSp_Ct_Fname(String sp_Ct_Fname) {
	Sp_Ct_Fname = sp_Ct_Fname;
}

public String getSp_Ct_Lname() {
	return Sp_Ct_Lname;
}

public void setSp_Ct_Lname(String sp_Ct_Lname) {
	Sp_Ct_Lname = sp_Ct_Lname;
}

public int getSUP_CT_PHONE() {
	return SUP_CT_PHONE;
}

public void setSUP_CT_PHONE(int sUP_CT_PHONE) {
	SUP_CT_PHONE = sUP_CT_PHONE;
}

public int getALT_PHONE() {
	return ALT_PHONE;
}

public void setALT_PHONE(int aLT_PHONE) {
	ALT_PHONE = aLT_PHONE;
}

public String getEMAIL_ID() {
	return EMAIL_ID;
}

public void setEMAIL_ID(String eMAIL_ID) {
	EMAIL_ID = eMAIL_ID;
}

public String getSP_INV_LIST() {
	return SP_INV_LIST;
}

public void setSP_INV_LIST(String sP_INV_LIST) {
	SP_INV_LIST = sP_INV_LIST;
}

public String getSP_MFC_EQP() {
	return SP_MFC_EQP;
}

public void setSP_MFC_EQP(String sP_MFC_EQP) {
	SP_MFC_EQP = sP_MFC_EQP;
}

public short getIsActive() {
	return IsActive;
}

public void setIsActive(short isActive) {
	IsActive = isActive;
}

public Date getCreated_Date() {
	return Created_Date;
}

public void setCreated_Date(Date created_Date) {
	Created_Date = created_Date;
}



}
