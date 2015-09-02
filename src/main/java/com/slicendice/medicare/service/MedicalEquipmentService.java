/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.ArrayList;
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
		List<Equip_Records> records = new ArrayList<Equip_Records>();
		records = medicalEquipmentDao.getMedicalEquipmentListFromRecords(serialNo, assetNo);
		if(!records.isEmpty()){
			return records;
		}
		return medicalEquipmentDao.getMedicalEquipmentList(serialNo, assetNo);
	}

	public int updateDetailPage(Equip_Records record) {
		int result = 0;
		List<Equip_Records> records = new ArrayList<Equip_Records>();
		records = medicalEquipmentDao.getMedicalEquipmentListFromRecords(record.getSERIAL_NO(), record.getINT_AST_NO());
		if(records.isEmpty()){
			result = medicalEquipmentDao.insertIntoRecords(record);
		}else{
			result = medicalEquipmentDao.updateDetailPage(record);
		}
		
		
		return result;
	}

	public int deleteEquipMentRecord(String equipId) {
		
		return medicalEquipmentDao.deleteEquipMentRecord(equipId);
	}
	
}
