/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.AnnualContractMapper;
import com.slicendice.medicare.model.Esr_CtrtModel;



/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class AnnualContractDao {

	@Autowired
	DBConnector connector;
	
	public List<Esr_CtrtModel> getAnnualContractList(String serialNo, String assetNo){
		String SQL;
		SQL = "SELECT * FROM pems_database.ESR_CTRT_Details ";
		List<Esr_CtrtModel> records = new ArrayList<Esr_CtrtModel>();
		List<String> params = new ArrayList<String>();
		if(null != serialNo && !serialNo.isEmpty()){
			SQL = SQL + "WHERE S_NUM = ?";
			params.add(serialNo);
		}else if(null != assetNo && !assetNo.isEmpty()){
			SQL = SQL + "WHERE INT_ASS_NUM = ?";
			params.add(assetNo);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new AnnualContractMapper());
		return records;
	}
}
