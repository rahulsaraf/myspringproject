/**
 * 
 */
package com.slicendice.medicare.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;

/**
 * @author Rahul
 *
 */
@Controller
public class CreatePageController {

	   
	   @RequestMapping(value = "/createEquipAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateEquipAdmin() {
	      return new ModelAndView("/create/createEquipAdmin", "equipmentAdminForm", new EquipAdminModel());
	   }
	   
	   
}
