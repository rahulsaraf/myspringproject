/**
 * 
 */
package com.slicendice.medicare.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author Rahul
 *
 */
@Controller
public class MedicalEquipmentListController {

	@RequestMapping(value="/searchequipments", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/MedicalEquipmentList";
	   }
	
}
