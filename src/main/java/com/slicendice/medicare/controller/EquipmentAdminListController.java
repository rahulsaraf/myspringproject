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

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;
import com.slicendice.medicare.service.EquipmentAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class EquipmentAdminListController {

	
	@Autowired
	EquipmentAdminService equipmentAdminService;
	
	@RequestMapping(value="/searchequipmentadmin", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("equipName") String equipName,
			   ModelMap model) {
		List<EquipAdminModel> records = equipmentAdminService.getEquipmentAdminList(equipName);
		  model.addAttribute("records",records);
		  model.addAttribute("equipName",equipName);
	      return "/list/EquipmentAdminList";
	   }
	
	@RequestMapping(value="/equipmentAdminDetail", method=RequestMethod.GET)
	public String redirectEquipAdminDetailPage(@RequestParam("equipId") String equipId, ModelMap model){
		List<EquipAdminModel> records = equipmentAdminService.getEquipAdminDetailList(equipId);
		model.addAttribute("record", records.get(0));
		return "EquipAdmin";
	}	
}
