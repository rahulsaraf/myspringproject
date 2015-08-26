/**
 * 
 */
package com.slicendice.medicare.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.model.VendorAdminModel;

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
	   
	   @RequestMapping(value = "/createSupplierAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateSupplierAdmin() {
	      return new ModelAndView("/create/createSupplierAdmin", "supplierAdminForm", new SupplierAdminModel());
	   }
	   
	   @RequestMapping(value = "/createVendorAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateVendorAdmin() {
	      return new ModelAndView("/create/createVendorAdmin", "vendorAdminForm", new VendorAdminModel());
	   }
	   
	   @RequestMapping(value = "/createUserAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateUserAdmin() {
	      return new ModelAndView("/create/createUserAdmin", "userAdminForm", new UserAdminModel());
	   }
}
