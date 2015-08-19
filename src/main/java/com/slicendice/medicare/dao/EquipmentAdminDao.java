/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.EquipmentAdminMapper;
import com.slicendice.medicare.model.EquipAdminModel;


/**
 * @author Rahul
 *
 */
@Service
public class EquipmentAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<EquipAdminModel> getEquipmentAdminList(String equipName){
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_admin ";
		List<EquipAdminModel> records = new ArrayList<EquipAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != equipName && !equipName.isEmpty()){
			SQL = SQL + "WHERE EQP_NAME LIKE ? ";
			params.add("%"+equipName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new EquipmentAdminMapper());
		return records;
	}

	public List<EquipAdminModel> getEquipAdminDetailList(String equipId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_admin ";
		List<EquipAdminModel> records = new ArrayList<EquipAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != equipId && !equipId.isEmpty()){
			SQL = SQL + "WHERE eqp_id = ?";
			params.add(equipId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new EquipmentAdminMapper());
		return records;	}
}
