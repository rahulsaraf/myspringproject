	package com.slicendice.medicare.model;

import java.util.Date;

public class VendorAdminModel {

private int vendorid;
private String Vendor_Name;
private String Vendor_Desc;
private String Ven_Addr_l1;
private String Ven_Addr_l2;
private String Ven_Addr_l3;
private String Ven_Country;
private String Ven_Ct_Name;
private String Ven_Ct_Phone;
private String Alt_Phone;
private String Email_ID;
private short Is_Ven_Supp;
private short Is_Ven_Manuf;
private short Is_Ven_Preffd;
private short DVS_Spares;
private String Add_Re;
private short IsActive;
private Date Created_Date;

public int getVendorid() {
	return vendorid;
}

public void setVendorid(int vendorid) {
	this.vendorid = vendorid;
}

public VendorAdminModel()
{
	
}

public VendorAdminModel(String vendor_Name, String vendor_Desc,
		String ven_Addr_l1, String ven_Addr_l2, String ven_Addr_l3,
		String ven_Country, String ven_Ct_Name, String ven_Ct_Phone,
		String alt_Phone, String email_ID, short is_Ven_Supp,
		short is_Ven_Manuf, short is_Ven_Preffd, short dVS_Spares,
		String add_Re, short isActive, Date created_Date) {
	super();
	Vendor_Name = vendor_Name;
	Vendor_Desc = vendor_Desc;
	Ven_Addr_l1 = ven_Addr_l1;
	Ven_Addr_l2 = ven_Addr_l2;
	Ven_Addr_l3 = ven_Addr_l3;
	Ven_Country = ven_Country;
	Ven_Ct_Name = ven_Ct_Name;
	Ven_Ct_Phone = ven_Ct_Phone;
	Alt_Phone = alt_Phone;
	Email_ID = email_ID;
	Is_Ven_Supp = is_Ven_Supp;
	Is_Ven_Manuf = is_Ven_Manuf;
	Is_Ven_Preffd = is_Ven_Preffd;
	DVS_Spares = dVS_Spares;
	Add_Re = add_Re;
	IsActive = isActive;
	Created_Date = created_Date;
}

public String getVendor_Name() {
	return Vendor_Name;
}

public void setVendor_Name(String vendor_Name) {
	Vendor_Name = vendor_Name;
}

public String getVendor_Desc() {
	return Vendor_Desc;
}

public void setVendor_Desc(String vendor_Desc) {
	Vendor_Desc = vendor_Desc;
}

public String getVen_Addr_l1() {
	return Ven_Addr_l1;
}

public void setVen_Addr_l1(String ven_Addr_l1) {
	Ven_Addr_l1 = ven_Addr_l1;
}

public String getVen_Addr_l2() {
	return Ven_Addr_l2;
}

public void setVen_Addr_l2(String ven_Addr_l2) {
	Ven_Addr_l2 = ven_Addr_l2;
}

public String getVen_Addr_l3() {
	return Ven_Addr_l3;
}

public void setVen_Addr_l3(String ven_Addr_l3) {
	Ven_Addr_l3 = ven_Addr_l3;
}

public String getVen_Country() {
	return Ven_Country;
}

public void setVen_Country(String ven_Country) {
	Ven_Country = ven_Country;
}

public String getVen_Ct_Name() {
	return Ven_Ct_Name;
}

public void setVen_Ct_Name(String ven_Ct_Name) {
	Ven_Ct_Name = ven_Ct_Name;
}

public String getVen_Ct_Phone() {
	return Ven_Ct_Phone;
}

public void setVen_Ct_Phone(String ven_Ct_Phone) {
	Ven_Ct_Phone = ven_Ct_Phone;
}

public String getAlt_Phone() {
	return Alt_Phone;
}

public void setAlt_Phone(String alt_Phone) {
	Alt_Phone = alt_Phone;
}

public String getEmail_ID() {
	return Email_ID;
}

public void setEmail_ID(String email_ID) {
	Email_ID = email_ID;
}

public short getIs_Ven_Supp() {
	return Is_Ven_Supp;
}

public void setIs_Ven_Supp(short is_Ven_Supp) {
	Is_Ven_Supp = is_Ven_Supp;
}

public short getIs_Ven_Manuf() {
	return Is_Ven_Manuf;
}

public void setIs_Ven_Manuf(short is_Ven_Manuf) {
	Is_Ven_Manuf = is_Ven_Manuf;
}

public short getIs_Ven_Preffd() {
	return Is_Ven_Preffd;
}

public void setIs_Ven_Preffd(short is_Ven_Preffd) {
	Is_Ven_Preffd = is_Ven_Preffd;
}

public short getDVS_Spares() {
	return DVS_Spares;
}

public void setDVS_Spares(short dVS_Spares) {
	DVS_Spares = dVS_Spares;
}

public String getAdd_Re() {
	return Add_Re;
}

public void setAdd_Re(String add_Re) {
	Add_Re = add_Re;
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
