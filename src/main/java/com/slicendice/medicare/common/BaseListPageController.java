/**
 * 
 */
package com.slicendice.medicare.common;

import javax.servlet.http.HttpServletRequest;

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
	   public String redirectMedicalEquipListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/MedicalEquipmentList";
	   }
	   
	   @RequestMapping(value="/equipAdminListPage", method=RequestMethod.GET)
	   public String redirectEquipAdminListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/EquipmentAdminList";
	   }
	   
	   @RequestMapping(value="/supplierAdminListPage", method=RequestMethod.GET)
	   public String redirectSupplierAdminListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/SupplierAdminList";
	   }
	   
	   @RequestMapping(value="/vendorAdminListPage", method=RequestMethod.GET)
	   public String redirectVendorAdminListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/VendorAdminList";
	   }
	   
	   @RequestMapping(value="/userAdminListPage", method=RequestMethod.GET)
	   public String redirectUserAdminListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/UserAdminList";
	   }

	   @RequestMapping(value="/warrantyDetailsListPage", method=RequestMethod.GET)
	   public String redirectWarrantyDetailsListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/WarrantyDetailsList";
	   }
	   
	   @RequestMapping(value="/anuualcontractdetailslistpage", method=RequestMethod.GET)
	   public String redirectAnnualContractDetailsListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/AnnualContractDetailsList";
	   }
	   
	   @RequestMapping(value="/scheduledmaintenancelistpage", method=RequestMethod.GET)
	   public String redirectScheduledMaintenanceListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/ScheduledMaintenanceList";
	   }
	   
	   @RequestMapping(value="/servicerequestlistpage", method=RequestMethod.GET)
	   public String redirectServiceRequestListPage(ModelMap model, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null)
				  return "Login";
			  else
				  return "/list/ServiceRequestDetailsList";
	   }
}
