/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.VendorAdminDao;
import com.slicendice.medicare.model.VendorAdminModel;

/**
 * @author Rahul
 *
 */
@Service
public class VendorAdminService {

	@Autowired
	VendorAdminDao vendorAdminDao;
	
	public List<VendorAdminModel> getVendorAdminList(String equipName){
		return vendorAdminDao.getVendorAdminList(equipName);
	}


	public List<VendorAdminModel> getVendorAdminDetailList(String equipId) {
		return vendorAdminDao.getVendorAdminDetailList(equipId);
	}
	
}
