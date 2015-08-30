/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.ServiceDetailsMapper;
import com.slicendice.medicare.model.Esr_Sr_SrDetailsModel;



/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class ServiceDetailsDao {

	@Autowired
	DBConnector connector;
	
	public List<Esr_Sr_SrDetailsModel> getServiceDetailsList(String serialNo, String assetNo){
		String SQL;
		SQL = "SELECT * FROM pems_database.ESR_SR_SRdetails ";
		List<Esr_Sr_SrDetailsModel> records = new ArrayList<Esr_Sr_SrDetailsModel>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + "WHERE SERIAL_NO = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + "WHERE int_ast_no = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new ServiceDetailsMapper());
		return records;
	}
}
