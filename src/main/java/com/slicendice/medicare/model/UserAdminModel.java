package com.slicendice.medicare.model;

import java.util.Date;

public class UserAdminModel {
	private String Usr_Name;
	private String Organisation;
	private String Department;
	private String Section;
	private String F_Name;
	private String L_Name;
	private String Full_Name;
	private String Emp_ID;
	private String Usr_Ct_Phone;
	private String Alt_phone;
	private String Email_ID;
	private String Login_ID;
	private String Password;
	private String Confirm_Password;
	private String Manager_Name;
	private String Manager_Id;
	private String User_Access;
	private short IsActive;
	private Date Created_Date;
	
	public UserAdminModel()
	{
		
	}

	public String getFull_Name() {
		return Full_Name;
	}

	public void setFull_Name(String full_Name) {
		Full_Name = full_Name;
	}

	public UserAdminModel(String usr_Name, String organisation,
			String department, String section, String f_Name, String l_Name,
			String emp_ID, String usr_Ct_Phone, String alt_phone,
			String email_ID, String login_ID, String password,
			String confirm_Password, String manager_Name, String manager_Id,
			String user_Access, short isActive, Date created_Date) {
		super();
		Usr_Name = usr_Name;
		Organisation = organisation;
		Department = department;
		Section = section;
		F_Name = f_Name;
		L_Name = l_Name;
		Emp_ID = emp_ID;
		Usr_Ct_Phone = usr_Ct_Phone;
		Alt_phone = alt_phone;
		Email_ID = email_ID;
		Login_ID = login_ID;
		Password = password;
		Confirm_Password = confirm_Password;
		Manager_Name = manager_Name;
		Manager_Id = manager_Id;
		User_Access = user_Access;
		IsActive = isActive;
		Created_Date = created_Date;
	}

	public String getUsr_Name() {
		return Usr_Name;
	}

	public void setUsr_Name(String usr_Name) {
		Usr_Name = usr_Name;
	}

	public String getOrganisation() {
		return Organisation;
	}

	public void setOrganisation(String organisation) {
		Organisation = organisation;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getSection() {
		return Section;
	}

	public void setSection(String section) {
		Section = section;
	}

	public String getF_Name() {
		return F_Name;
	}

	public void setF_Name(String f_Name) {
		F_Name = f_Name;
	}

	public String getL_Name() {
		return L_Name;
	}

	public void setL_Name(String l_Name) {
		L_Name = l_Name;
	}

	public String getEmp_ID() {
		return Emp_ID;
	}

	public void setEmp_ID(String emp_ID) {
		Emp_ID = emp_ID;
	}

	public String getUsr_Ct_Phone() {
		return Usr_Ct_Phone;
	}

	public void setUsr_Ct_Phone(String usr_Ct_Phone) {
		Usr_Ct_Phone = usr_Ct_Phone;
	}

	public String getAlt_phone() {
		return Alt_phone;
	}

	public void setAlt_phone(String alt_phone) {
		Alt_phone = alt_phone;
	}

	public String getEmail_ID() {
		return Email_ID;
	}

	public void setEmail_ID(String email_ID) {
		Email_ID = email_ID;
	}

	public String getLogin_ID() {
		return Login_ID;
	}

	public void setLogin_ID(String login_ID) {
		Login_ID = login_ID;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getConfirm_Password() {
		return Confirm_Password;
	}

	public void setConfirm_Password(String confirm_Password) {
		Confirm_Password = confirm_Password;
	}

	public String getManager_Name() {
		return Manager_Name;
	}

	public void setManager_Name(String manager_Name) {
		Manager_Name = manager_Name;
	}

	public String getManager_Id() {
		return Manager_Id;
	}

	public void setManager_Id(String manager_Id) {
		Manager_Id = manager_Id;
	}

	public String getUser_Access() {
		return User_Access;
	}

	public void setUser_Access(String user_Access) {
		User_Access = user_Access;
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
