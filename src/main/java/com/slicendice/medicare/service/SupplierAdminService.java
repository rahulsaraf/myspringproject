/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.EquipmentAdminDao;
import com.slicendice.medicare.dao.SupplierAdminDao;
import com.slicendice.medicare.model.SupplierAdminModel;

/**
 * @author Rahul
 *
 */
@Service
public class SupplierAdminService {

	@Autowired
	SupplierAdminDao supplierAdminDao;
	
	public List<SupplierAdminModel> getSupplierAdminList(String equipName){
		return supplierAdminDao.getSupplierAdminList(equipName);
	}


	public List<SupplierAdminModel> getSupplierAdminDetailList(String equipId) {
		return supplierAdminDao.getSupplierAdminDetailList(equipId);
	}
	
}
