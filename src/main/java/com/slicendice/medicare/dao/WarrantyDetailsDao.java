package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.WarantyDetailsMapper;
import com.slicendice.medicare.model.Esr_WarantyModel;

@Service
public class WarrantyDetailsDao {
	
	@Autowired
	DBConnector connector;

	public List<Esr_WarantyModel> getWarrantyDetailsList(String serialNo,
			String assetNo) {
		// TODO Auto-generated method stub
		String SQL;
		SQL = "SELECT * FROM pems_database.ESR_WARANTY_DETAILS";
		List<Esr_WarantyModel> records = new ArrayList<Esr_WarantyModel>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + "WHERE SERIAL_NO = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + "WHERE int_ast_no = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new WarantyDetailsMapper());
		return records;
	}

}
