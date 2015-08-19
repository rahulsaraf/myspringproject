package com.slicendice.medicare.model;

import java.util.Date;

public class Wo_OrderDetailsModel {
private String INT_ASST_NO;
private String SERIAL_NO;
private String EQP_NAME;
private String EQP_DESC;
private String DESC_WORK;
private short IsActive;
private Date Created_Date;

public Wo_OrderDetailsModel()
{
	
}

public Wo_OrderDetailsModel(String iNT_ASST_NO, String sERIAL_NO,
		String eQP_NAME, String eQP_DESC, String dESC_WORK, short isActive,
		Date created_Date) {
	super();
	INT_ASST_NO = iNT_ASST_NO;
	SERIAL_NO = sERIAL_NO;
	EQP_NAME = eQP_NAME;
	EQP_DESC = eQP_DESC;
	DESC_WORK = dESC_WORK;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getINT_ASST_NO() {
	return INT_ASST_NO;
}

public void setINT_ASST_NO(String iNT_ASST_NO) {
	INT_ASST_NO = iNT_ASST_NO;
}

public String getSERIAL_NO() {
	return SERIAL_NO;
}

public void setSERIAL_NO(String sERIAL_NO) {
	SERIAL_NO = sERIAL_NO;
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

public String getDESC_WORK() {
	return DESC_WORK;
}

public void setDESC_WORK(String dESC_WORK) {
	DESC_WORK = dESC_WORK;
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
