/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.ServiceDetailsDao;
import com.slicendice.medicare.model.Esr_Sr_SrDetailsModel;


/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class ServiceDetailsService {

	@Autowired
	ServiceDetailsDao serviceDetailsDao;
	
	public List<Esr_Sr_SrDetailsModel> getServiceDetailsList(String serialNo, String assetNo){
		return serviceDetailsDao.getServiceDetailsList(serialNo, assetNo);
	}
	
}
