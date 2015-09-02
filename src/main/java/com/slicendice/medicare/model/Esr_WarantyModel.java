package com.slicendice.medicare.model;

import java.util.Date;

public class Esr_WarantyModel {

private int warrenty_id;
private int equip_id;
private String INT_ASS_NUM;
private int S_NUM;
private String EQP_NAME;
private String EQP_DESC;
private String MNF_NAME;
private String VENDOR_NAME;
private Date WAR_S_DATE;
private Date WAR_E_DATE;
private String WAR_TYPE;
private String INV_NUM;
private Date INV_DATE;
private Date DELY_DATE;
private Date INSTA_DATE;
private short IsActive;
private Date Created_Date;

public int getWarrenty_id() {
	return warrenty_id;
}

public void setWarrenty_id(int warrenty_id) {
	this.warrenty_id = warrenty_id;
}

public int getEquip_id() {
	return equip_id;
}

public void setEquip_id(int equip_id) {
	this.equip_id = equip_id;
}

public Esr_WarantyModel()
{
	
}

public Esr_WarantyModel(String iNT_ASS_NUM, int s_NUM, String eQP_NAME,
		String eQP_DESC, String mNF_NAME, String vENDOR_NAME, Date wAR_S_DATE,
		Date wAR_E_DATE, String wAR_TYPE, String iNV_NUM, Date iNV_DATE,
		Date dELY_DATE, Date iNSTA_DATE, short isActive, Date created_Date) {
	super();
	INT_ASS_NUM = iNT_ASS_NUM;
	S_NUM = s_NUM;
	EQP_NAME = eQP_NAME;
	EQP_DESC = eQP_DESC;
	MNF_NAME = mNF_NAME;
	VENDOR_NAME = vENDOR_NAME;
	WAR_S_DATE = wAR_S_DATE;
	WAR_E_DATE = wAR_E_DATE;
	WAR_TYPE = wAR_TYPE;
	INV_NUM = iNV_NUM;
	INV_DATE = iNV_DATE;
	DELY_DATE = dELY_DATE;
	INSTA_DATE = iNSTA_DATE;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getINT_ASS_NUM() {
	return INT_ASS_NUM;
}

public void setINT_ASS_NUM(String iNT_ASS_NUM) {
	INT_ASS_NUM = iNT_ASS_NUM;
}

public int getS_NUM() {
	return S_NUM;
}

public void setS_NUM(int s_NUM) {
	S_NUM = s_NUM;
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

public String getMNF_NAME() {
	return MNF_NAME;
}

public void setMNF_NAME(String mNF_NAME) {
	MNF_NAME = mNF_NAME;
}

public String getVENDOR_NAME() {
	return VENDOR_NAME;
}

public void setVENDOR_NAME(String vENDOR_NAME) {
	VENDOR_NAME = vENDOR_NAME;
}

public Date getWAR_S_DATE() {
	return WAR_S_DATE;
}

public void setWAR_S_DATE(Date wAR_S_DATE) {
	WAR_S_DATE = wAR_S_DATE;
}

public Date getWAR_E_DATE() {
	return WAR_E_DATE;
}

public void setWAR_E_DATE(Date wAR_E_DATE) {
	WAR_E_DATE = wAR_E_DATE;
}

public String getWAR_TYPE() {
	return WAR_TYPE;
}

public void setWAR_TYPE(String wAR_TYPE) {
	WAR_TYPE = wAR_TYPE;
}

public String getINV_NUM() {
	return INV_NUM;
}

public void setINV_NUM(String iNV_NUM) {
	INV_NUM = iNV_NUM;
}

public Date getINV_DATE() {
	return INV_DATE;
}

public void setINV_DATE(Date iNV_DATE) {
	INV_DATE = iNV_DATE;
}

public Date getDELY_DATE() {
	return DELY_DATE;
}

public void setDELY_DATE(Date dELY_DATE) {
	DELY_DATE = dELY_DATE;
}

public Date getINSTA_DATE() {
	return INSTA_DATE;
}

public void setINSTA_DATE(Date iNSTA_DATE) {
	INSTA_DATE = iNSTA_DATE;
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
