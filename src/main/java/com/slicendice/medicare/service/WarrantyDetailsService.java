package com.slicendice.medicare.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.WarrantyDetailsDao;
import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Esr_WarantyModel;

@Service
public class WarrantyDetailsService {

	@Autowired
	WarrantyDetailsDao warrantyDetailsDao;
	
	@Autowired
	EquipmentAdminService adminService;
	
	public List<Esr_WarantyModel> getWarrantyDetailsList(String serialNo,
			String assetNo) {
		
		return warrantyDetailsDao.getWarrantyDetailsList(serialNo, assetNo);
	}
	
	public Esr_WarantyModel getEquipmentDetails(String serialNo,String assetNo){
		Esr_WarantyModel model = new Esr_WarantyModel();
		EquipAdminModel admin = adminService.getEquipmentDetails(serialNo,assetNo);
		if(admin != null){
			model.setEQP_NAME(admin.getEqp_Name());
			model.setEQP_DESC(admin.getEqp_Desc());
			model.setEquip_id(admin.getEqp_id());
			model.setINT_ASS_NUM(admin.getInt_Asset_no());
			model.setS_NUM(Integer.valueOf(admin.getSerial_No()));
			model.setDELY_DATE(admin.getEqp_Del_Date());
			model.setMNF_NAME(admin.getManf_Name());
			model.setVENDOR_NAME(admin.getVendor_Name());
		}
		return model;
	}

	public int createWarrantyDetails(Esr_WarantyModel esr_WarantyModel) {
		esr_WarantyModel.setIsActive((short)1);
		esr_WarantyModel.setCreated_Date(new Date());
		return warrantyDetailsDao.createWarrantyDetails(esr_WarantyModel);
	}
	

}
