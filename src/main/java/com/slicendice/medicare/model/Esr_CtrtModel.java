package com.slicendice.medicare.model;

import java.util.Date;

public class Esr_CtrtModel {

private String INT_ASS_NUM;
private int S_NUM;
private String EQP_NAME;
private String EQP_DESC;
private String MNF_NAME;
private String VENDOR_NAME;
private String AMC_V_NAME;
private Date AMC_S_DATE;
private Date AMC_E_DATE;
private Date ORIG_INST_DATE;
private String AMC_INV_NUM;
private long AMC_INV_AMOUNT;
private Date PRE_MAIN_SCHD;
private short IsActive;
private Date Created_Date;

public Esr_CtrtModel()
{
	
}

public Esr_CtrtModel(String iNT_ASS_NUM, int s_NUM, String eQP_NAME,
		String eQP_DESC, String mNF_NAME, String vENDOR_NAME,
		String aMC_V_NAME, Date aMC_S_DATE, Date aMC_E_DATE,
		Date oRIG_INST_DATE, String aMC_INV_NUM, long aMC_INV_AMOUNT,
		Date pRE_MAIN_SCHD, short isActive, Date created_Date) {
	super();
	INT_ASS_NUM = iNT_ASS_NUM;
	S_NUM = s_NUM;
	EQP_NAME = eQP_NAME;
	EQP_DESC = eQP_DESC;
	MNF_NAME = mNF_NAME;
	VENDOR_NAME = vENDOR_NAME;
	AMC_V_NAME = aMC_V_NAME;
	AMC_S_DATE = aMC_S_DATE;
	AMC_E_DATE = aMC_E_DATE;
	ORIG_INST_DATE = oRIG_INST_DATE;
	AMC_INV_NUM = aMC_INV_NUM;
	AMC_INV_AMOUNT = aMC_INV_AMOUNT;
	PRE_MAIN_SCHD = pRE_MAIN_SCHD;
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

public String getAMC_V_NAME() {
	return AMC_V_NAME;
}

public void setAMC_V_NAME(String aMC_V_NAME) {
	AMC_V_NAME = aMC_V_NAME;
}

public Date getAMC_S_DATE() {
	return AMC_S_DATE;
}

public void setAMC_S_DATE(Date aMC_S_DATE) {
	AMC_S_DATE = aMC_S_DATE;
}

public Date getAMC_E_DATE() {
	return AMC_E_DATE;
}

public void setAMC_E_DATE(Date aMC_E_DATE) {
	AMC_E_DATE = aMC_E_DATE;
}

public Date getORIG_INST_DATE() {
	return ORIG_INST_DATE;
}

public void setORIG_INST_DATE(Date oRIG_INST_DATE) {
	ORIG_INST_DATE = oRIG_INST_DATE;
}

public String getAMC_INV_NUM() {
	return AMC_INV_NUM;
}

public void setAMC_INV_NUM(String aMC_INV_NUM) {
	AMC_INV_NUM = aMC_INV_NUM;
}

public long getAMC_INV_AMOUNT() {
	return AMC_INV_AMOUNT;
}

public void setAMC_INV_AMOUNT(long aMC_INV_AMOUNT) {
	AMC_INV_AMOUNT = aMC_INV_AMOUNT;
}

public Date getPRE_MAIN_SCHD() {
	return PRE_MAIN_SCHD;
}

public void setPRE_MAIN_SCHD(Date pRE_MAIN_SCHD) {
	PRE_MAIN_SCHD = pRE_MAIN_SCHD;
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
