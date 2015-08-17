/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.MedicalEquipmentDao;
import com.slicendice.medicare.model.Equip_Records;

/**
 * @author Rahul
 *
 */
@Service
public class MedicalEquipmentService {

	@Autowired
	MedicalEquipmentDao medicalEquipmentDao;
	
	public List<Equip_Records> getMedicalEquipmentList(String serialNo, String assetNo){
		return medicalEquipmentDao.getMedicalEquipmentList(serialNo, assetNo);
	}
	
}
