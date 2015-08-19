package com.slicendice.medicare.model;

import java.util.Date;

public class Wo_Act_DetailsModel {
private String DEPT;
private String DEPT_CONTACT;
private String INT_ASS_NUM;
private String SR_NUMBER;
private String EQUP_NAME;
private String EQUP_DESC;
private long ITEM_COST;
private int ITEM_QTY;
private float HR_WORKED;
private long HR_RATE;
private long TOTAL_ITEM_COST;
private long TOTAL_LB_COST;
private long TOTAL_COST;
private short IsActive;
private Date Created_Date;

public Wo_Act_DetailsModel()
{
	
}

public Wo_Act_DetailsModel(String dEPT, String dEPT_CONTACT,
		String iNT_ASS_NUM, String sR_NUMBER, String eQUP_NAME,
		String eQUP_DESC, long iTEM_COST, int iTEM_QTY, float hR_WORKED,
		long hR_RATE, long tOTAL_ITEM_COST, long tOTAL_LB_COST,
		long tOTAL_COST, short isActive, Date created_Date) {
	super();
	DEPT = dEPT;
	DEPT_CONTACT = dEPT_CONTACT;
	INT_ASS_NUM = iNT_ASS_NUM;
	SR_NUMBER = sR_NUMBER;
	EQUP_NAME = eQUP_NAME;
	EQUP_DESC = eQUP_DESC;
	ITEM_COST = iTEM_COST;
	ITEM_QTY = iTEM_QTY;
	HR_WORKED = hR_WORKED;
	HR_RATE = hR_RATE;
	TOTAL_ITEM_COST = tOTAL_ITEM_COST;
	TOTAL_LB_COST = tOTAL_LB_COST;
	TOTAL_COST = tOTAL_COST;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getDEPT() {
	return DEPT;
}

public void setDEPT(String dEPT) {
	DEPT = dEPT;
}

public String getDEPT_CONTACT() {
	return DEPT_CONTACT;
}

public void setDEPT_CONTACT(String dEPT_CONTACT) {
	DEPT_CONTACT = dEPT_CONTACT;
}

public String getINT_ASS_NUM() {
	return INT_ASS_NUM;
}

public void setINT_ASS_NUM(String iNT_ASS_NUM) {
	INT_ASS_NUM = iNT_ASS_NUM;
}

public String getSR_NUMBER() {
	return SR_NUMBER;
}

public void setSR_NUMBER(String sR_NUMBER) {
	SR_NUMBER = sR_NUMBER;
}

public String getEQUP_NAME() {
	return EQUP_NAME;
}

public void setEQUP_NAME(String eQUP_NAME) {
	EQUP_NAME = eQUP_NAME;
}

public String getEQUP_DESC() {
	return EQUP_DESC;
}

public void setEQUP_DESC(String eQUP_DESC) {
	EQUP_DESC = eQUP_DESC;
}

public long getITEM_COST() {
	return ITEM_COST;
}

public void setITEM_COST(long iTEM_COST) {
	ITEM_COST = iTEM_COST;
}

public int getITEM_QTY() {
	return ITEM_QTY;
}

public void setITEM_QTY(int iTEM_QTY) {
	ITEM_QTY = iTEM_QTY;
}

public float getHR_WORKED() {
	return HR_WORKED;
}

public void setHR_WORKED(float hR_WORKED) {
	HR_WORKED = hR_WORKED;
}

public long getHR_RATE() {
	return HR_RATE;
}

public void setHR_RATE(long hR_RATE) {
	HR_RATE = hR_RATE;
}

public long getTOTAL_ITEM_COST() {
	return TOTAL_ITEM_COST;
}

public void setTOTAL_ITEM_COST(long tOTAL_ITEM_COST) {
	TOTAL_ITEM_COST = tOTAL_ITEM_COST;
}

public long getTOTAL_LB_COST() {
	return TOTAL_LB_COST;
}

public void setTOTAL_LB_COST(long tOTAL_LB_COST) {
	TOTAL_LB_COST = tOTAL_LB_COST;
}

public long getTOTAL_COST() {
	return TOTAL_COST;
}

public void setTOTAL_COST(long tOTAL_COST) {
	TOTAL_COST = tOTAL_COST;
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
