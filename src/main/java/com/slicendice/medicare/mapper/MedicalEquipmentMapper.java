/**
 * 
 */
package com.slicendice.medicare.mapper;

import com.slicendice.medicare.model.Equip_Records;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


/**
 * @author Rahul
 *
 */
public class MedicalEquipmentMapper implements RowMapper<Equip_Records>{

	@Override
	public Equip_Records mapRow(ResultSet rs, int arg1) throws SQLException {
		Equip_Records records = new Equip_Records();
		records.setSERIAL_NO(rs.getString("SERIAL_NO"));
		records.setINT_AST_NO(rs.getString("INT_AST_NO"));
		records.setEQP_NAME(rs.getString("EQP_NAME"));
		records.setMODEL_NO(rs.getString("MODEL_NO"));
		records.setVEN_NAME(rs.getString("VEN_NAME"));
		records.setSUPPLIER_NAME(rs.getString("SUPPLIER_NAME"));
		records.setROOM_NO(rs.getInt("ROOM_NO"));
		records.setACTUAL_LOC(rs.getString("ACTUAL_LOC"));
		records.setINDENT_NO(rs.getString("INDENT_NO"));
		records.setINVOICE_NO(rs.getString("INVOICE_NO"));
		records.setINVOICE_DATE(rs.getDate("INVOICE_DATE"));
		records.setLPO_NO(rs.getString("LPO_NO"));
		records.setMANUF_NAME(rs.getString("MANUF_NAME"));
		return records;
	}
}
