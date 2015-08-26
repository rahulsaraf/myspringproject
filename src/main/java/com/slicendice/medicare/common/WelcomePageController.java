/**
 * 
 */
package com.slicendice.medicare.common;

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
	
   @RequestMapping(value="/", method=RequestMethod.GET)
   public String redirectWelcomePage(ModelMap model) {
      return "Login";
   }
   
   @RequestMapping(value="/medicalequipment", method=RequestMethod.GET)
   public String redirectMedicalEquipmentPage(ModelMap model) {
      return "MedicalEquipment";
   }
   
   @RequestMapping(value="/WarrantyDetails", method=RequestMethod.GET)
   public String redirectWarrantyDetailsPage(ModelMap model) {
      return "/serviceRecordDetail/WarrantyDetails";
   }
   
   @RequestMapping(value="/AnnualContractDetails", method=RequestMethod.GET)
   public String redirectAnnualContractDetailsPage(ModelMap model) {
      return "/serviceRecordDetail/AnnualContractDetails";
   }
   
   @RequestMapping(value="/ScheduledMaintainance", method=RequestMethod.GET)
   public String redirectScheduledMaintainancePage(ModelMap model) {
      return "/serviceRecordDetail/ScheduledMaintainance";
   }
   
   @RequestMapping(value="/ServiceRequest", method=RequestMethod.GET)
   public String redirectServiceRequestPage(ModelMap model) {
      return "/serviceRecordDetail/ServiceRequest";
   }
   
   @RequestMapping(value="/TechnicalDetails", method=RequestMethod.GET)
   public String redirectTechnicalDetailsPage(ModelMap model) {
      return "/serviceRecordDetail/TechnicalDetails";
   }
   
   @RequestMapping(value="/EquipAdmin", method=RequestMethod.GET)
   public String redirectEquipAdminPage(ModelMap model) {
      return "/adminDetail/EquipAdmin";
   }
   
   @RequestMapping(value="/SupplierAdmin", method=RequestMethod.GET)
   public String redirectSupplierAdminPage(ModelMap model) {
      return "/adminDetail/SupplierAdmin";
   }
   
   @RequestMapping(value="/VendorAdmin", method=RequestMethod.GET)
   public String redirectVendorAdminPage(ModelMap model) {
      return "/adminDetail/VendorAdmin";
   }
   
   @RequestMapping(value="/OrgAdmin", method=RequestMethod.GET)
   public String redirectOrgAdminPage(ModelMap model) {
      return "/adminDetail/OrgAdmin";
   }
   
   @RequestMapping(value="/UserAdmin", method=RequestMethod.GET)
   public String redirectUserAdminPage(ModelMap model) {
      return "/adminDetail/UserAdmin";
   }
   
}