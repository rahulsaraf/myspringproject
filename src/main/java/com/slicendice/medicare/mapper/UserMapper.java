package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.UserAuthModel;



public class UserMapper implements RowMapper<UserAuthModel> {
	@Override
	public UserAuthModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserAuthModel records = new UserAuthModel();
		records.setUsername(rs.getString("username"));
		records.setPassword(rs.getString("password"));
		return records;
	}
}
