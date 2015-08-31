/**
 * 
 */
package com.slicendice.medicare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;
import com.slicendice.medicare.service.EquipmentAdminService;
import com.slicendice.medicare.service.MedicalEquipmentService;

/**
 * @author Rahul
 *
 */
@Controller
public class MedicalEquipmentListController {

	@Autowired
	MedicalEquipmentService medicalEquipmentService;
	
	@Autowired
	EquipmentAdminService equipmentAdminService;
	
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
	public ModelAndView redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<Equip_Records> records = medicalEquipmentService.getMedicalEquipmentList(serialNo, null);
		model.addAttribute("record", records.get(0));
		Equip_Records record = records.get(0);
		return new ModelAndView("MedicalEquipment", "medEquipmentForm", record);
	}
	
	@RequestMapping(value="/updateMedEquipmentDetails", method=RequestMethod.POST)
	public ModelAndView updateDetailPage(@ModelAttribute("medEquipmentForm") Equip_Records record, ModelMap model){
		int result = medicalEquipmentService.updateDetailPage(record);
		model.addAttribute("result", result);
		return new ModelAndView("MedicalEquipment", "medEquipmentForm", record);
	}
	
	
}
