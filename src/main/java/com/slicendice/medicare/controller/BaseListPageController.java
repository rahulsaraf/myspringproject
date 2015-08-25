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
	   
	   @RequestMapping(value="/equipAdminListPage", method=RequestMethod.GET)
	   public String redirectEquipAdminListPage(ModelMap model) {
	      return "/list/EquipmentAdminList";
	   }
	   
	   @RequestMapping(value="/supplierAdminListPage", method=RequestMethod.GET)
	   public String redirectSupplierAdminListPage(ModelMap model) {
	      return "/list/SupplierAdminList";
	   }
	   
	   @RequestMapping(value="/vendorAdminListPage", method=RequestMethod.GET)
	   public String redirectVendorAdminListPage(ModelMap model) {
	      return "/list/VendorAdminList";
	   }
	   
	   @RequestMapping(value="/userAdminListPage", method=RequestMethod.GET)
	   public String redirectUserAdminListPage(ModelMap model) {
	      return "/list/UserAdminList";
	   }

	   
}
