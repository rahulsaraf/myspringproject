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
		SQL = "SELECT * FROM pems_database.ESR_WRTY_DETAILS ";
		List<Esr_WarantyModel> records = new ArrayList<Esr_WarantyModel>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + " WHERE SERIAL_NO = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + " WHERE int_ast_no = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new WarantyDetailsMapper());
		return records;
	}

	public int createWarrantyDetails(Esr_WarantyModel model) {
		String SQL = "INSERT INTO pems_database.esr_wrty_details"
				+ "(Int_Asset_no,Serial_No,EQP_NAME,EQP_DESC,MNF_NAME,VENDOR_NAME,"
				+ "WAR_S_DATE,WAR_E_DATE,WAR_TYPE,INV_NUM,INV_DATE,DELY_DATE,INSTA_DATE,"
				+ "IsActive,Created_Date,equip_id)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		
		return connector.getJdbcTemplateObject().update(SQL,model.getINT_ASS_NUM(),
				model.getS_NUM(),
				model.getEQP_NAME(),
				model.getEQP_DESC(),
				model.getMNF_NAME(),
				model.getVENDOR_NAME(),
				model.getWAR_S_DATE(),
				model.getWAR_E_DATE(),
				model.getWAR_TYPE(),
				model.getINV_NUM(),
				model.getINV_DATE(),
				model.getDELY_DATE(),
				model.getINSTA_DATE(),
				model.getIsActive(),
				model.getCreated_Date(),
				model.getEquip_id());
	}

}
