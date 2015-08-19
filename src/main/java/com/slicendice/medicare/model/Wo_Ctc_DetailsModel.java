package com.slicendice.medicare.model;

import java.util.Date;

public class Wo_Ctc_DetailsModel {
private Date ORDER_DATE;
private Date REQT_DATE;
private String VENDOR_NAME;
private String VEN_ADDR_LINE1;
private String VEN_ADDR_LINE2;
private String SUBURB;
private String CITY;
private int PHONE;
private int A_PHONE;
private String EMAIL;
private short IsActive;
private Date Created_Date;

public Wo_Ctc_DetailsModel()
{
	
}

public Wo_Ctc_DetailsModel(Date oRDER_DATE, Date rEQT_DATE, String vENDOR_NAME,
		String vEN_ADDR_LINE1, String vEN_ADDR_LINE2, String sUBURB,
		String cITY, int pHONE, int a_PHONE, String eMAIL, short isActive,
		Date created_Date) {
	super();
	ORDER_DATE = oRDER_DATE;
	REQT_DATE = rEQT_DATE;
	VENDOR_NAME = vENDOR_NAME;
	VEN_ADDR_LINE1 = vEN_ADDR_LINE1;
	VEN_ADDR_LINE2 = vEN_ADDR_LINE2;
	SUBURB = sUBURB;
	CITY = cITY;
	PHONE = pHONE;
	A_PHONE = a_PHONE;
	EMAIL = eMAIL;
	IsActive = isActive;
	Created_Date = created_Date;
}

public Date getORDER_DATE() {
	return ORDER_DATE;
}

public void setORDER_DATE(Date oRDER_DATE) {
	ORDER_DATE = oRDER_DATE;
}

public Date getREQT_DATE() {
	return REQT_DATE;
}

public void setREQT_DATE(Date rEQT_DATE) {
	REQT_DATE = rEQT_DATE;
}

public String getVENDOR_NAME() {
	return VENDOR_NAME;
}

public void setVENDOR_NAME(String vENDOR_NAME) {
	VENDOR_NAME = vENDOR_NAME;
}

public String getVEN_ADDR_LINE1() {
	return VEN_ADDR_LINE1;
}

public void setVEN_ADDR_LINE1(String vEN_ADDR_LINE1) {
	VEN_ADDR_LINE1 = vEN_ADDR_LINE1;
}

public String getVEN_ADDR_LINE2() {
	return VEN_ADDR_LINE2;
}

public void setVEN_ADDR_LINE2(String vEN_ADDR_LINE2) {
	VEN_ADDR_LINE2 = vEN_ADDR_LINE2;
}

public String getSUBURB() {
	return SUBURB;
}

public void setSUBURB(String sUBURB) {
	SUBURB = sUBURB;
}

public String getCITY() {
	return CITY;
}

public void setCITY(String cITY) {
	CITY = cITY;
}

public int getPHONE() {
	return PHONE;
}

public void setPHONE(int pHONE) {
	PHONE = pHONE;
}

public int getA_PHONE() {
	return A_PHONE;
}

public void setA_PHONE(int a_PHONE) {
	A_PHONE = a_PHONE;
}

public String getEMAIL() {
	return EMAIL;
}

public void setEMAIL(String eMAIL) {
	EMAIL = eMAIL;
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
