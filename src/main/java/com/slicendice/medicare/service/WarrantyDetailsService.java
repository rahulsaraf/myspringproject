package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.WarrantyDetailsDao;
import com.slicendice.medicare.model.Esr_WarantyModel;

@Service
public class WarrantyDetailsService {

	@Autowired
	WarrantyDetailsDao warrantyDetailsDao;
	
	public List<Esr_WarantyModel> getWarrantyDetailsList(String serialNo,
			String assetNo) {
		
		return warrantyDetailsDao.getWarrantyDetailsList(serialNo, assetNo);
	}
	
	
	

}
