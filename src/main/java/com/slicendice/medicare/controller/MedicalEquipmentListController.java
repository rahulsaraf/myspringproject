/**
 * 
 */
package com.slicendice.medicare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.slicendice.medicare.model.Equip_Records;
import com.slicendice.medicare.service.MedicalEquipmentService;

/**
 * @author Rahul
 *
 */
@Controller
public class MedicalEquipmentListController {

	@Autowired
	MedicalEquipmentService medicalEquipmentService;
	
	@RequestMapping(value="/searchequipments", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		List<Equip_Records> records = medicalEquipmentService.getMedicalEquipmentList(serialNo, assetNo);
		  model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/MedicalEquipmentList";
	   }
	
	@RequestMapping(value="/equipmentDetail", method=RequestMethod.GET)
	public String redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<Equip_Records> records = medicalEquipmentService.getMedicalEquipmentList(serialNo, null);
		model.addAttribute("record", records.get(0));
		
		return "MedicalEquipment";
	}
	
}
