package com.slicendice.medicare.model;

import java.util.Date;

public class OrgAdminModel {
	
	private String Org_Name;
	private String Org_Code;
	private String Department;
	private String Dept_Code;
	private String Section;
	private String Section_Code;
	private int IsActive;
	private Date Created_Date;
	
	public OrgAdminModel()
	{
		
	}

	public OrgAdminModel(String org_Name, String org_Code, String department,
			String dept_Code, String section, String section_Code,
			int isActive, Date created_Date) {
		super();
		Org_Name = org_Name;
		Org_Code = org_Code;
		Department = department;
		Dept_Code = dept_Code;
		Section = section;
		Section_Code = section_Code;
		IsActive = isActive;
		Created_Date = created_Date;
	}

	public String getOrg_Name() {
		return Org_Name;
	}

	public void setOrg_Name(String org_Name) {
		Org_Name = org_Name;
	}

	public String getOrg_Code() {
		return Org_Code;
	}

	public void setOrg_Code(String org_Code) {
		Org_Code = org_Code;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getDept_Code() {
		return Dept_Code;
	}

	public void setDept_Code(String dept_Code) {
		Dept_Code = dept_Code;
	}

	public String getSection() {
		return Section;
	}

	public void setSection(String section) {
		Section = section;
	}

	public String getSection_Code() {
		return Section_Code;
	}

	public void setSection_Code(String section_Code) {
		Section_Code = section_Code;
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
