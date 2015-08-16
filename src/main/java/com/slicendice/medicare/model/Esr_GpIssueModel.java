package com.slicendice.medicare.model;

import java.util.Date;

public class Esr_GpIssueModel {
private String ENG_NAME;
private String COMP_NAME;
private Date TIME_IN;
private Date TIME_OUT;
private Date Date;
private String EQP_DESC;
private String Approver_NAME;
private int IsActive;
private Date Created_Date;

public Esr_GpIssueModel()
{
	
}

public Esr_GpIssueModel(String eNG_NAME, String cOMP_NAME,
		java.util.Date tIME_IN, java.util.Date tIME_OUT, java.util.Date date,
		String eQP_DESC, String approver_NAME, int isActive,
		java.util.Date created_Date) {
	super();
	ENG_NAME = eNG_NAME;
	COMP_NAME = cOMP_NAME;
	TIME_IN = tIME_IN;
	TIME_OUT = tIME_OUT;
	Date = date;
	EQP_DESC = eQP_DESC;
	Approver_NAME = approver_NAME;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getENG_NAME() {
	return ENG_NAME;
}

public void setENG_NAME(String eNG_NAME) {
	ENG_NAME = eNG_NAME;
}

public String getCOMP_NAME() {
	return COMP_NAME;
}

public void setCOMP_NAME(String cOMP_NAME) {
	COMP_NAME = cOMP_NAME;
}

public Date getTIME_IN() {
	return TIME_IN;
}

public void setTIME_IN(Date tIME_IN) {
	TIME_IN = tIME_IN;
}

public Date getTIME_OUT() {
	return TIME_OUT;
}

public void setTIME_OUT(Date tIME_OUT) {
	TIME_OUT = tIME_OUT;
}

public Date getDate() {
	return Date;
}

public void setDate(Date date) {
	Date = date;
}

public String getEQP_DESC() {
	return EQP_DESC;
}

public void setEQP_DESC(String eQP_DESC) {
	EQP_DESC = eQP_DESC;
}

public String getApprover_NAME() {
	return Approver_NAME;
}

public void setApprover_NAME(String approver_NAME) {
	Approver_NAME = approver_NAME;
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
