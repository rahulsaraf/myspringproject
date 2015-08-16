package com.slicendice.medicare.model;

import java.util.Date;

public class Esr_SrTechDetailsModel {
private String ENGR_NAME;
private String COMPANY_NAME;
private String MNGR_NAME;
private String ADDRS_LINE1;
private String ADDRS_LINE2;
private String SUBURB;
private String CITY;
private String ZIP;
private int PHONE;
private int A_PHONE;
private String EMAIL;
private int IsActive;
private Date Created_Date;

public Esr_SrTechDetailsModel(String eNGR_NAME, String cOMPANY_NAME,
		String mNGR_NAME, String aDDRS_LINE1, String aDDRS_LINE2,
		String sUBURB, String cITY, String zIP, int pHONE, int a_PHONE,
		String eMAIL, int isActive, Date created_Date) {
	super();
	ENGR_NAME = eNGR_NAME;
	COMPANY_NAME = cOMPANY_NAME;
	MNGR_NAME = mNGR_NAME;
	ADDRS_LINE1 = aDDRS_LINE1;
	ADDRS_LINE2 = aDDRS_LINE2;
	SUBURB = sUBURB;
	CITY = cITY;
	ZIP = zIP;
	PHONE = pHONE;
	A_PHONE = a_PHONE;
	EMAIL = eMAIL;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getENGR_NAME() {
	return ENGR_NAME;
}

public void setENGR_NAME(String eNGR_NAME) {
	ENGR_NAME = eNGR_NAME;
}

public String getCOMPANY_NAME() {
	return COMPANY_NAME;
}

public void setCOMPANY_NAME(String cOMPANY_NAME) {
	COMPANY_NAME = cOMPANY_NAME;
}

public String getMNGR_NAME() {
	return MNGR_NAME;
}

public void setMNGR_NAME(String mNGR_NAME) {
	MNGR_NAME = mNGR_NAME;
}

public String getADDRS_LINE1() {
	return ADDRS_LINE1;
}

public void setADDRS_LINE1(String aDDRS_LINE1) {
	ADDRS_LINE1 = aDDRS_LINE1;
}

public String getADDRS_LINE2() {
	return ADDRS_LINE2;
}

public void setADDRS_LINE2(String aDDRS_LINE2) {
	ADDRS_LINE2 = aDDRS_LINE2;
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

public String getZIP() {
	return ZIP;
}

public void setZIP(String zIP) {
	ZIP = zIP;
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

public int getIsActive() {
	return IsActive;
}

public void setIsActive(int isActive) {
	IsActive = isActive;
}

public Date getCreated_Date() {
	return Created_Date;
}

public void setCreated_Date(Date created_Date) {
	Created_Date = created_Date;
}

}
