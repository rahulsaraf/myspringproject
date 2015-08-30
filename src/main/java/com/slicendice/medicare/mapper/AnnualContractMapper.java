
package com.slicendice.medicare.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.Esr_CtrtModel;


/**
 * @author Manasa Malleshappa
 *
 */
public class AnnualContractMapper implements RowMapper<Esr_CtrtModel>{

	@Override
	public Esr_CtrtModel mapRow(ResultSet rs, int arg1) throws SQLException {
		Esr_CtrtModel records = new Esr_CtrtModel();
		//For list page
		records.setINT_ASS_NUM(rs.getString("INT_ASS_NUM"));
		records.setS_NUM(rs.getInt("S_NUM"));
		records.setEQP_NAME(rs.getString("EQP_NAME"));
		records.setEQP_DESC(rs.getString("EQP_DESC"));
		records.setMNF_NAME(rs.getString("MNF_NAME"));
		records.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
		records.setAMC_V_NAME(rs.getString("AMC_V_NAME"));
		records.setAMC_S_DATE(rs.getDate("AMC_S_DATE"));
		records.setAMC_E_DATE(rs.getDate("AMC_E_DATE"));
		records.setORIG_INST_DATE(rs.getDate("ORIG_INST_DATE"));
		records.setAMC_INV_NUM(rs.getString("AMC_INV_NUM"));
		records.setAMC_INV_AMOUNT(rs.getLong("AMC_INV_AMOUNT"));
		records.setPRE_MAIN_SCHD(rs.getDate("PRE_MAIN_SCHD"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		
		return records;
	}
}