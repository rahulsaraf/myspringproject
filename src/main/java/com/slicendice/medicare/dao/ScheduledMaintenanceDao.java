/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.ScheduledMaintenanceMapper;
import com.slicendice.medicare.model.ESR_SR_Schd_MtModel;



/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class ScheduledMaintenanceDao {

	@Autowired
	DBConnector connector;
	
	public List<ESR_SR_Schd_MtModel> getScheduledMaintenanceList(String serialNo, String assetNo){
		String SQL;
		SQL = "SELECT * FROM pems_database.ESR_SR_Schd_MT ";
		List<ESR_SR_Schd_MtModel> records = new ArrayList<ESR_SR_Schd_MtModel>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + "WHERE S_Num = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + "WHERE INT_Asset_No = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new ScheduledMaintenanceMapper());
		return records;
	}
}
