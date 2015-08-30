/**
 * 
 */
package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.model.VendorAdminModel;



/**
 * @author Rahul
 *
 */
public class UserAdminMapper implements RowMapper<UserAdminModel>{

	@Override
	public UserAdminModel mapRow(ResultSet rs, int arg1) throws SQLException {
		UserAdminModel records = new UserAdminModel();
		records.setUserid(rs.getInt("Usr_Name"));
		records.setOrganisation(rs.getString("Organisation"));
		records.setDepartment(rs.getString("Department"));
		records.setSection(rs.getString("Section"));
		records.setF_Name(rs.getString("F_Name"));
		records.setL_Name(rs.getString("L_Name"));
		records.setEmp_ID(rs.getString("Emp_ID"));
		records.setUsr_Ct_Phone(rs.getString("Usr_Ct_Phone"));
		records.setAlt_phone(rs.getString("Alt_phone"));
		records.setEmail_ID(rs.getString("Email_ID"));
		records.setLogin_ID(rs.getString("Login_ID"));
		records.setPassword(rs.getString("Password"));
		records.setConfirm_Password(rs.getString("Confirm_Password"));
		records.setManager_Name(rs.getString("Manager_Name"));
		records.setManager_Id(rs.getString("Manager_Id"));
		records.setUser_Access(rs.getString("User_Access"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));

		return records;
	}
}