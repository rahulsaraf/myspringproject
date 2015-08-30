/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.AnnualContractDao;
import com.slicendice.medicare.model.Esr_CtrtModel;


/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class AnnualContractService {

	@Autowired
	AnnualContractDao annualContractDao;
	
	public List<Esr_CtrtModel> getAnnualContractList(String serialNo, String assetNo){
		return annualContractDao.getAnnualContractList(serialNo, assetNo);
	}
	
}
