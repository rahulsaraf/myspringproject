/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.EquipmentAdminDao;
import com.slicendice.medicare.dao.MedicalEquipmentDao;
import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;

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
	
}
