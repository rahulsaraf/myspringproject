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
public class WelcomePageController {
	
   @RequestMapping(value="/", method=RequestMethod.GET)
   public String redirectWelcomePage(ModelMap model) {
      return "welcome";
   }
   
   @RequestMapping(value="/medicalequipment", method=RequestMethod.GET)
   public String redirectMedicalEquipmentPage(ModelMap model) {
      return "medequip";
   }
   
   @RequestMapping(value="/WarrantyDetails", method=RequestMethod.GET)
   public String redirectWarrantyDetailsPage(ModelMap model) {
      return "WarrantyDetails";
   }
   
   @RequestMapping(value="/AnnualContractDetails", method=RequestMethod.GET)
   public String redirectAnnualContractDetailsPage(ModelMap model) {
      return "AnnualContractDetails";
   }
   
   @RequestMapping(value="/ScheduledMaintainance", method=RequestMethod.GET)
   public String redirectScheduledMaintainancePage(ModelMap model) {
      return "ScheduledMaintainance";
   }
   
   @RequestMapping(value="/ServiceRequest", method=RequestMethod.GET)
   public String redirectServiceRequestPage(ModelMap model) {
      return "ServiceRequest";
   }
   
   @RequestMapping(value="/TechnicalDetails", method=RequestMethod.GET)
   public String redirectTechnicalDetailsPage(ModelMap model) {
      return "TechnicalDetails";
   }
   
   @RequestMapping(value="/EquipAdmin", method=RequestMethod.GET)
   public String redirectEquipAdminPage(ModelMap model) {
      return "EquipAdmin";
   }
   
   @RequestMapping(value="/SupplierAdmin", method=RequestMethod.GET)
   public String redirectSupplierAdminPage(ModelMap model) {
      return "SupplierAdmin";
   }
   
   @RequestMapping(value="/VendorAdmin", method=RequestMethod.GET)
   public String redirectVendorAdminPage(ModelMap model) {
      return "VendorAdmin";
   }
   
   @RequestMapping(value="/OrgAdmin", method=RequestMethod.GET)
   public String redirectOrgAdminPage(ModelMap model) {
      return "OrgAdmin";
   }
   
   @RequestMapping(value="/UserAdmin", method=RequestMethod.GET)
   public String redirectUserAdminPage(ModelMap model) {
      return "UserAdmin";
   }
   
}