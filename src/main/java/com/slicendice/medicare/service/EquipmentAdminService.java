/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.EquipmentAdminDao;
import com.slicendice.medicare.model.EquipAdminModel;

/**
 * @author Rahul
 *
 */
@Service
public class EquipmentAdminService {

	@Autowired
	EquipmentAdminDao equipmentAdminDao;
	
	public List<EquipAdminModel> getEquipmentAdminList(String equipName){
		return equipmentAdminDao.getEquipmentAdminList(equipName);
	}


	public List<EquipAdminModel> getEquipAdminDetailList(String equipId) {
		return equipmentAdminDao.getEquipAdminDetailList(equipId);
	}


	public int createEquipmentAdminRecord(EquipAdminModel equipAdminModel) {
		// TODO Auto-generated method stub
		equipAdminModel.setIsActive((short)1);
		equipAdminModel.setCreated_Date(new Date());
		return equipmentAdminDao.createEquipmentAdminRecord(equipAdminModel);
	}
	
}
