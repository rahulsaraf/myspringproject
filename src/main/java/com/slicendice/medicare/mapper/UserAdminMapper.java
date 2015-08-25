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
		return records;
	}
}