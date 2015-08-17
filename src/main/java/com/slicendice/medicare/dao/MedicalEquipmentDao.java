/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.MedicalEquipmentMapper;
import com.slicendice.medicare.model.Equip_Records;


/**
 * @author Rahul
 *
 */
@Service
public class MedicalEquipmentDao {

	@Autowired
	DBConnector connector;
	
	public List<Equip_Records> getMedicalEquipmentList(String serialNo, String assetNo){
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_records ";
		List<Equip_Records> records = new ArrayList<Equip_Records>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + "WHERE SERIAL_NO = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + "WHERE int_ast_no = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new MedicalEquipmentMapper());
		
		return records;
	}
	
	
	
	
}
