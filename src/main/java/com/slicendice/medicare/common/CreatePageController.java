/**
 * 
 */
package com.slicendice.medicare.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Esr_WarantyModel;
import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.model.VendorAdminModel;
import com.slicendice.medicare.service.SupplierAdminService;
import com.slicendice.medicare.service.VendorAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class CreatePageController {

	@Autowired
	SupplierAdminService supplierAdminService;
	
	@Autowired
	VendorAdminService vendorAdminService;
	
	   @RequestMapping(value = "/createEquipAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateEquipAdmin(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null){
			   return new ModelAndView("Login");
			  }else{
				  List<SupplierAdminModel> supplierRecords = supplierAdminService.getSupplierAdminList("");
				  	model.addAttribute("supplierAdminList",supplierRecords);
				  	List<VendorAdminModel> vendorRecords = vendorAdminService.getVendorAdminList("");
					  model.addAttribute("vendorAdminList",vendorRecords);
					return new ModelAndView("/create/createEquipAdmin", "equipmentAdminForm", new EquipAdminModel());
			  }
				 
	   }
	   
	   @RequestMapping(value = "/createSupplierAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateSupplierAdmin(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null){
			   return new ModelAndView("Login");
			  }else
				  return new ModelAndView("/create/createSupplierAdmin", "supplierAdminForm", new SupplierAdminModel());
	   }
	   
	   @RequestMapping(value = "/createVendorAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateVendorAdmin(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null){
			   return new ModelAndView("Login");
			  }else
				  return new ModelAndView("/create/createVendorAdmin", "vendorAdminForm", new VendorAdminModel());
	   }
	   
	   @RequestMapping(value = "/createUserAdminPage", method = RequestMethod.GET)
	   public ModelAndView redirectCreateUserAdmin(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null){
			   return new ModelAndView("Login");
			  }else
				  return new ModelAndView("/create/createUserAdmin", "userAdminForm", new UserAdminModel());
	   }
	   
	  
}
