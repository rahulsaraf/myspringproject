package com.slicendice.medicare.model;

import java.util.Date;

public class ESR_SR_Schd_MtModel {

	private String INT_Asset_No;
	private int S_Num;
	private String BME_NUM;
	private String EQP_CAT;
	private String EQP_SUB_CAT;
	private String EQP_CODE;
	private String EQP_DESC;
	private String WAR_TYPE;
	private Date WAR_EXP_DATE;
	private String WORKSHOP;
	private String SCHD_MAINT;
	private String EMGY_MAINT;
	private Date FLT_DATE;
	private String FLT_DESC;
	private String FLT_PRIORITY;
	private String ADD_DESC;
	private String REMARKS;
	private int IsActive;
	private Date Created_Date;
	
	public ESR_SR_Schd_MtModel()
	{
		
	}

	public ESR_SR_Schd_MtModel(String iNT_Asset_No, int s_Num, String bME_NUM,
			String eQP_CAT, String eQP_SUB_CAT, String eQP_CODE,
			String eQP_DESC, String wAR_TYPE, Date wAR_EXP_DATE,
			String wORKSHOP, String sCHD_MAINT, String eMGY_MAINT,
			Date fLT_DATE, String fLT_DESC, String fLT_PRIORITY,
			String aDD_DESC, String rEMARKS, int isActive, Date created_Date) {
		super();
		INT_Asset_No = iNT_Asset_No;
		S_Num = s_Num;
		BME_NUM = bME_NUM;
		EQP_CAT = eQP_CAT;
		EQP_SUB_CAT = eQP_SUB_CAT;
		EQP_CODE = eQP_CODE;
		EQP_DESC = eQP_DESC;
		WAR_TYPE = wAR_TYPE;
		WAR_EXP_DATE = wAR_EXP_DATE;
		WORKSHOP = wORKSHOP;
		SCHD_MAINT = sCHD_MAINT;
		EMGY_MAINT = eMGY_MAINT;
		FLT_DATE = fLT_DATE;
		FLT_DESC = fLT_DESC;
		FLT_PRIORITY = fLT_PRIORITY;
		ADD_DESC = aDD_DESC;
		REMARKS = rEMARKS;
		IsActive = isActive;
		Created_Date = created_Date;
	}

	public String getINT_Asset_No() {
		return INT_Asset_No;
	}

	public void setINT_Asset_No(String iNT_Asset_No) {
		INT_Asset_No = iNT_Asset_No;
	}

	public int getS_Num() {
		return S_Num;
	}

	public void setS_Num(int s_Num) {
		S_Num = s_Num;
	}

	public String getBME_NUM() {
		return BME_NUM;
	}

	public void setBME_NUM(String bME_NUM) {
		BME_NUM = bME_NUM;
	}

	public String getEQP_CAT() {
		return EQP_CAT;
	}

	public void setEQP_CAT(String eQP_CAT) {
		EQP_CAT = eQP_CAT;
	}

	public String getEQP_SUB_CAT() {
		return EQP_SUB_CAT;
	}

	public void setEQP_SUB_CAT(String eQP_SUB_CAT) {
		EQP_SUB_CAT = eQP_SUB_CAT;
	}

	public String getEQP_CODE() {
		return EQP_CODE;
	}

	public void setEQP_CODE(String eQP_CODE) {
		EQP_CODE = eQP_CODE;
	}

	public String getEQP_DESC() {
		return EQP_DESC;
	}

	public void setEQP_DESC(String eQP_DESC) {
		EQP_DESC = eQP_DESC;
	}

	public String getWAR_TYPE() {
		return WAR_TYPE;
	}

	public void setWAR_TYPE(String wAR_TYPE) {
		WAR_TYPE = wAR_TYPE;
	}

	public Date getWAR_EXP_DATE() {
		return WAR_EXP_DATE;
	}

	public void setWAR_EXP_DATE(Date wAR_EXP_DATE) {
		WAR_EXP_DATE = wAR_EXP_DATE;
	}

	public String getWORKSHOP() {
		return WORKSHOP;
	}

	public void setWORKSHOP(String wORKSHOP) {
		WORKSHOP = wORKSHOP;
	}

	public String getSCHD_MAINT() {
		return SCHD_MAINT;
	}

	public void setSCHD_MAINT(String sCHD_MAINT) {
		SCHD_MAINT = sCHD_MAINT;
	}

	public String getEMGY_MAINT() {
		return EMGY_MAINT;
	}

	public void setEMGY_MAINT(String eMGY_MAINT) {
		EMGY_MAINT = eMGY_MAINT;
	}

	public Date getFLT_DATE() {
		return FLT_DATE;
	}

	public void setFLT_DATE(Date fLT_DATE) {
		FLT_DATE = fLT_DATE;
	}

	public String getFLT_DESC() {
		return FLT_DESC;
	}

	public void setFLT_DESC(String fLT_DESC) {
		FLT_DESC = fLT_DESC;
	}

	public String getFLT_PRIORITY() {
		return FLT_PRIORITY;
	}

	public void setFLT_PRIORITY(String fLT_PRIORITY) {
		FLT_PRIORITY = fLT_PRIORITY;
	}

	public String getADD_DESC() {
		return ADD_DESC;
	}

	public void setADD_DESC(String aDD_DESC) {
		ADD_DESC = aDD_DESC;
	}

	public String getREMARKS() {
		return REMARKS;
	}

	public void setREMARKS(String rEMARKS) {
		REMARKS = rEMARKS;
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
