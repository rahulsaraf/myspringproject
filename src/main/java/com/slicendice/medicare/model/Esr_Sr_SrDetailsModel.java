package com.slicendice.medicare.model;

import java.util.Date;

public class Esr_Sr_SrDetailsModel {
private String SERV_TYPE;
private String SERV_DESC;
private int COMPREHENSIVE_FLAG;
private int PREVENTIVE_FLAG;
private String DEFECT_CODE;
private String DEFECT_DESC;
private String ITEM_CODE;
private String ITEM_DESC;
private int IsActive;
private Date Created_Date;

public Esr_Sr_SrDetailsModel()
{
	
}

public Esr_Sr_SrDetailsModel(String sERV_TYPE, String sERV_DESC,
		int cOMPREHENSIVE_FLAG, int pREVENTIVE_FLAG, String dEFECT_CODE,
		String dEFECT_DESC, String iTEM_CODE, String iTEM_DESC, int isActive,
		Date created_Date) {
	super();
	SERV_TYPE = sERV_TYPE;
	SERV_DESC = sERV_DESC;
	COMPREHENSIVE_FLAG = cOMPREHENSIVE_FLAG;
	PREVENTIVE_FLAG = pREVENTIVE_FLAG;
	DEFECT_CODE = dEFECT_CODE;
	DEFECT_DESC = dEFECT_DESC;
	ITEM_CODE = iTEM_CODE;
	ITEM_DESC = iTEM_DESC;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getSERV_TYPE() {
	return SERV_TYPE;
}

public void setSERV_TYPE(String sERV_TYPE) {
	SERV_TYPE = sERV_TYPE;
}

public String getSERV_DESC() {
	return SERV_DESC;
}

public void setSERV_DESC(String sERV_DESC) {
	SERV_DESC = sERV_DESC;
}

public int getCOMPREHENSIVE_FLAG() {
	return COMPREHENSIVE_FLAG;
}

public void setCOMPREHENSIVE_FLAG(int cOMPREHENSIVE_FLAG) {
	COMPREHENSIVE_FLAG = cOMPREHENSIVE_FLAG;
}

public int getPREVENTIVE_FLAG() {
	return PREVENTIVE_FLAG;
}

public void setPREVENTIVE_FLAG(int pREVENTIVE_FLAG) {
	PREVENTIVE_FLAG = pREVENTIVE_FLAG;
}

public String getDEFECT_CODE() {
	return DEFECT_CODE;
}

public void setDEFECT_CODE(String dEFECT_CODE) {
	DEFECT_CODE = dEFECT_CODE;
}

public String getDEFECT_DESC() {
	return DEFECT_DESC;
}

public void setDEFECT_DESC(String dEFECT_DESC) {
	DEFECT_DESC = dEFECT_DESC;
}

public String getITEM_CODE() {
	return ITEM_CODE;
}

public void setITEM_CODE(String iTEM_CODE) {
	ITEM_CODE = iTEM_CODE;
}

public String getITEM_DESC() {
	return ITEM_DESC;
}

public void setITEM_DESC(String iTEM_DESC) {
	ITEM_DESC = iTEM_DESC;
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
