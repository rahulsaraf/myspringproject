/**
 * 
 */
package com.slicendice.medicare.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Rahul
 *
 */
@Controller
public class BaseListPageController {

	   @RequestMapping(value="/medicalequiplistpage", method=RequestMethod.GET)
	   public String redirectMedicalEquipListPage(ModelMap model) {
	      return "/list/MedicalEquipmentList";
	   }
}
