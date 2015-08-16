package com.slicendice.medicare.model;

import java.util.Date;

public class EquipAdminModel {

private String ST_Comp;
private String Doc_rvcd;
private String Equip_Manuals;
private String Service_Manuals;
private String OTE_Needed;
private String Calib_Certi;
private String Accessories;
private String Trng_Done;
private String Dept_Trnd;
private String Spares_List;
private String Add_Re;
private int IsActive;
private Date Created_Date;

public EquipAdminModel(){
	
}

public EquipAdminModel(String sT_Comp, String doc_rvcd, String equip_Manuals,
		String service_Manuals, String oTE_Needed, String calib_Certi,
		String accessories, String trng_Done, String dept_Trnd,
		String spares_List, String add_Re, int isActive, Date created_Date) {
	super();
	ST_Comp = sT_Comp;
	Doc_rvcd = doc_rvcd;
	Equip_Manuals = equip_Manuals;
	Service_Manuals = service_Manuals;
	OTE_Needed = oTE_Needed;
	Calib_Certi = calib_Certi;
	Accessories = accessories;
	Trng_Done = trng_Done;
	Dept_Trnd = dept_Trnd;
	Spares_List = spares_List;
	Add_Re = add_Re;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getST_Comp() {
	return ST_Comp;
}

public void setST_Comp(String sT_Comp) {
	ST_Comp = sT_Comp;
}

public String getDoc_rvcd() {
	return Doc_rvcd;
}

public void setDoc_rvcd(String doc_rvcd) {
	Doc_rvcd = doc_rvcd;
}

public String getEquip_Manuals() {
	return Equip_Manuals;
}

public void setEquip_Manuals(String equip_Manuals) {
	Equip_Manuals = equip_Manuals;
}

public String getService_Manuals() {
	return Service_Manuals;
}

public void setService_Manuals(String service_Manuals) {
	Service_Manuals = service_Manuals;
}

public String getOTE_Needed() {
	return OTE_Needed;
}

public void setOTE_Needed(String oTE_Needed) {
	OTE_Needed = oTE_Needed;
}

public String getCalib_Certi() {
	return Calib_Certi;
}

public void setCalib_Certi(String calib_Certi) {
	Calib_Certi = calib_Certi;
}

public String getAccessories() {
	return Accessories;
}

public void setAccessories(String accessories) {
	Accessories = accessories;
}

public String getTrng_Done() {
	return Trng_Done;
}

public void setTrng_Done(String trng_Done) {
	Trng_Done = trng_Done;
}

public String getDept_Trnd() {
	return Dept_Trnd;
}

public void setDept_Trnd(String dept_Trnd) {
	Dept_Trnd = dept_Trnd;
}

public String getSpares_List() {
	return Spares_List;
}

public void setSpares_List(String spares_List) {
	Spares_List = spares_List;
}

public String getAdd_Re() {
	return Add_Re;
}

public void setAdd_Re(String add_Re) {
	Add_Re = add_Re;
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
