
package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.ESR_SR_Schd_MtModel;


/**
 * @author Manasa Malleshappa
 *
 */


public class ScheduledMaintenanceMapper implements RowMapper<ESR_SR_Schd_MtModel>{

	@Override
	public ESR_SR_Schd_MtModel mapRow(ResultSet rs, int arg1) throws SQLException {
		ESR_SR_Schd_MtModel records = new ESR_SR_Schd_MtModel();
		//For list page
		
		records.setINT_Asset_No(rs.getString("INT_Asset_No"));
		records.setS_Num(rs.getInt("S_Num"));
		records.setBME_NUM(rs.getString("BME_NUM"));
		records.setEQP_CAT(rs.getString("EQP_CAT"));
		records.setEQP_SUB_CAT(rs.getString("EQP_SUB_CAT"));
		records.setEQP_CODE(rs.getString("EQP_CODE"));
		records.setEQP_DESC(rs.getString("EQP_DESC"));
		records.setWAR_TYPE(rs.getString("WAR_TYPE"));
		records.setWAR_EXP_DATE(rs.getDate("WAR_EXP_DATE"));
		records.setWORKSHOP(rs.getString("WORKSHOP"));
		records.setSCHD_MAINT(rs.getString("SCHD_MAINT"));
		records.setEMGY_MAINT(rs.getString("EMGY_MAINT"));
		records.setFLT_DATE(rs.getDate("FLT_DATE"));
		records.setFLT_DESC(rs.getString("FLT_DESC"));
		records.setFLT_PRIORITY(rs.getString("FLT_PRIORITY"));
		records.setADD_DESC(rs.getString("ADD_DESC"));
		records.setREMARKS(rs.getString("REMARKS"));
		records.setIsActive(rs.getShort("IsActive"));
		records.setCreated_Date(rs.getDate("Created_Date"));
		
		
		return records;
	}
}