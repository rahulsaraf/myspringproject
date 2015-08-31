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
public class WelcomePageController {
	
   @RequestMapping(value="/login", method=RequestMethod.GET)
   public String redirectWelcomePage(ModelMap model, HttpServletRequest request) {
	   model.addAttribute("result", 1);
	   request.getSession().invalidate();
	   request.getSession().removeValue("username");
      return "Login";
   }
   
   @RequestMapping(value="/home", method=RequestMethod.GET)
   public String redirectLoginPage(ModelMap model, HttpServletRequest request) {
	  if(request.getSession().getAttribute("username") != null){
		  return "Home";
	  }else{
		  return "Login";
	  }
      
   }
   
   @RequestMapping(value="/medicalequipment", method=RequestMethod.GET)
   public String redirectMedicalEquipmentPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null){
			  return "Login";
		  }else
			  return "MedicalEquipment";
   }
   
   @RequestMapping(value="/WarrantyDetails", method=RequestMethod.GET)
   public String redirectWarrantyDetailsPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/WarrantyDetails";
   }
   
   @RequestMapping(value="/AnnualContractDetails", method=RequestMethod.GET)
   public String redirectAnnualContractDetailsPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/AnnualContractDetails";
   }
   
   @RequestMapping(value="/ScheduledMaintainance", method=RequestMethod.GET)
   public String redirectScheduledMaintainancePage(ModelMap model, HttpServletRequest request) {
      
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/ScheduledMaintainance";
   }
   
   @RequestMapping(value="/ServiceRequest", method=RequestMethod.GET)
   public String redirectServiceRequestPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/ServiceRequest";
   }
   
   @RequestMapping(value="/TechnicalDetails", method=RequestMethod.GET)
   public String redirectTechnicalDetailsPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/TechnicalDetails";
   }
   
   @RequestMapping(value="/EquipAdmin", method=RequestMethod.GET)
   public String redirectEquipAdminPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/adminDetail/EquipAdmin";
   }
   
   @RequestMapping(value="/SupplierAdmin", method=RequestMethod.GET)
   public String redirectSupplierAdminPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/adminDetail/SupplierAdmin";
   }
   
   @RequestMapping(value="/VendorAdmin", method=RequestMethod.GET)
   public String redirectVendorAdminPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/adminDetail/VendorAdmin";
   }
   
   @RequestMapping(value="/OrgAdmin", method=RequestMethod.GET)
   public String redirectOrgAdminPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/adminDetail/OrgAdmin";
   }
   
   @RequestMapping(value="/UserAdmin", method=RequestMethod.GET)
   public String redirectUserAdminPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/adminDetail/UserAdmin";
   }
   
   @RequestMapping(value="/WorkOrder", method=RequestMethod.GET)
   public String redirectWorkOrderPage(ModelMap model, HttpServletRequest request) {
	   if(request.getSession().getAttribute("username") == null)
			  return "Login";
		  else
			  return "/serviceRecordDetail/WorkOrder";
   }
   
}