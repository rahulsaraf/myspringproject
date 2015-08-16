package com.slicendice.medicare.model;

import java.util.Date;

public class SupplierAdminModel {

	private String Sp_Name;
	private String Sp_Addr_L1;
	private String Sp_Addr_L2;
	private String Suburb;
	private String Sp_City;
	private String Sp_Zip;
	private String Sp_Country;
	private String Sp_Ct_Fname;
	private String Sp_Ct_Lname;
	private int Sp_Ct_Phone;
	private int Alt_phone;
	private String Email_ID;
	private int IsActive;
	private Date Created_Date;
	
	public SupplierAdminModel()
	{
		
	}

	public SupplierAdminModel(String sp_Name, String sp_Addr_L1,
			String sp_Addr_L2, String suburb, String sp_City, String sp_Zip,
			String sp_Country, String sp_Ct_Fname, String sp_Ct_Lname,
			int sp_Ct_Phone, int alt_phone, String email_ID, int isActive,
			Date created_Date) {
		super();
		Sp_Name = sp_Name;
		Sp_Addr_L1 = sp_Addr_L1;
		Sp_Addr_L2 = sp_Addr_L2;
		Suburb = suburb;
		Sp_City = sp_City;
		Sp_Zip = sp_Zip;
		Sp_Country = sp_Country;
		Sp_Ct_Fname = sp_Ct_Fname;
		Sp_Ct_Lname = sp_Ct_Lname;
		Sp_Ct_Phone = sp_Ct_Phone;
		Alt_phone = alt_phone;
		Email_ID = email_ID;
		IsActive = isActive;
		Created_Date = created_Date;
	}

	public String getSp_Name() {
		return Sp_Name;
	}

	public void setSp_Name(String sp_Name) {
		Sp_Name = sp_Name;
	}

	public String getSp_Addr_L1() {
		return Sp_Addr_L1;
	}

	public void setSp_Addr_L1(String sp_Addr_L1) {
		Sp_Addr_L1 = sp_Addr_L1;
	}

	public String getSp_Addr_L2() {
		return Sp_Addr_L2;
	}

	public void setSp_Addr_L2(String sp_Addr_L2) {
		Sp_Addr_L2 = sp_Addr_L2;
	}

	public String getSuburb() {
		return Suburb;
	}

	public void setSuburb(String suburb) {
		Suburb = suburb;
	}

	public String getSp_City() {
		return Sp_City;
	}

	public void setSp_City(String sp_City) {
		Sp_City = sp_City;
	}

	public String getSp_Zip() {
		return Sp_Zip;
	}

	public void setSp_Zip(String sp_Zip) {
		Sp_Zip = sp_Zip;
	}

	public String getSp_Country() {
		return Sp_Country;
	}

	public void setSp_Country(String sp_Country) {
		Sp_Country = sp_Country;
	}

	public String getSp_Ct_Fname() {
		return Sp_Ct_Fname;
	}

	public void setSp_Ct_Fname(String sp_Ct_Fname) {
		Sp_Ct_Fname = sp_Ct_Fname;
	}

	public String getSp_Ct_Lname() {
		return Sp_Ct_Lname;
	}

	public void setSp_Ct_Lname(String sp_Ct_Lname) {
		Sp_Ct_Lname = sp_Ct_Lname;
	}

	public int getSp_Ct_Phone() {
		return Sp_Ct_Phone;
	}

	public void setSp_Ct_Phone(int sp_Ct_Phone) {
		Sp_Ct_Phone = sp_Ct_Phone;
	}

	public int getAlt_phone() {
		return Alt_phone;
	}

	public void setAlt_phone(int alt_phone) {
		Alt_phone = alt_phone;
	}

	public String getEmail_ID() {
		return Email_ID;
	}

	public void setEmail_ID(String email_ID) {
		Email_ID = email_ID;
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
