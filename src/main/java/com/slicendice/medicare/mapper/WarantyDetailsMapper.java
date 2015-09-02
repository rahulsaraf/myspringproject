package com.slicendice.medicare.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.slicendice.medicare.model.Esr_WarantyModel;

public class WarantyDetailsMapper implements  RowMapper<Esr_WarantyModel>{



@Override
public Esr_WarantyModel mapRow(ResultSet rs, int rowNum) throws SQLException {
	// TODO Auto-generated method stub
	
	Esr_WarantyModel records=new Esr_WarantyModel();
	records.setWarrenty_id(rs.getInt("Wrty_id"));
	records.setEquip_id(rs.getInt("equip_id"));
	records.setINT_ASS_NUM(rs.getString("Int_Asset_no"));
	records.setS_NUM(rs.getInt("Serial_No"));
	records.setEQP_NAME(rs.getString("EQP_NAME"));
	records.setEQP_DESC(rs.getString("EQP_DESC"));
	records.setMNF_NAME(rs.getString("MNF_NAME"));
	records.setVENDOR_NAME(rs.getString("VENDOR_NAME"));
	records.setWAR_S_DATE(rs.getDate("WAR_S_DATE"));
	records.setWAR_E_DATE(rs.getDate("WAR_E_DATE"));
	records.setWAR_TYPE(rs.getString("WAR_TYPE"));
	records.setINV_NUM(rs.getString("INV_NUM"));
	records.setINV_DATE(rs.getDate("INV_DATE"));
	records.setDELY_DATE(rs.getDate("DELY_DATE"));
	records.setINSTA_DATE(rs.getDate("INSTA_DATE"));
	records.setIsActive(rs.getShort("IsActive"));
	records.setCreated_Date(rs.getDate("Created_Date"));
	
	
	return records;
}

}