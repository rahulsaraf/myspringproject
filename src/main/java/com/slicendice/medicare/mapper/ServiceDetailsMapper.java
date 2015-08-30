
package com.slicendice.medicare.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.Esr_Sr_SrDetailsModel;


/**
 * @author Manasa Malleshappa
 *
 */



public class ServiceDetailsMapper implements RowMapper<Esr_Sr_SrDetailsModel>{

	@Override
	public Esr_Sr_SrDetailsModel mapRow(ResultSet rs, int arg1) throws SQLException {
		Esr_Sr_SrDetailsModel records = new Esr_Sr_SrDetailsModel();
		//For list page
		records.setSERIAL_NO(rs.getString("SERIAL_NO"));
		records.setINT_AST_NO(rs.getString("INT_AST_NO"));
		records.setSERV_TYPE(rs.getString("SERV_TYPE"));
		records.setSERV_DESC(rs.getString("SERV_DESC"));
		records.setDEFECT_CODE(rs.getString("DEFECT_CODE"));
		records.setDEFECT_DESC(rs.getString("DEFECT_DESC"));
		records.setITEM_CODE(rs.getString("ITEM_CODE"));
		records.setITEM_DESC(rs.getString("ITEM_DESC"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		return records;
	}
}