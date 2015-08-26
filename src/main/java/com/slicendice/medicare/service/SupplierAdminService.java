/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


	public int createSupplierAdminRecord(SupplierAdminModel supplierAdminModel) {
		// TODO Auto-generated method stub
		supplierAdminModel.setIsActive((short)1);
		supplierAdminModel.setCreated_Date(new Date());
		 return supplierAdminDao.createSupplierAdminRecord(supplierAdminModel);
	}
	
}
