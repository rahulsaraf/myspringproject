/**
 * 
 */
package com.slicendice.medicare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.model.VendorAdminModel;
import com.slicendice.medicare.service.VendorAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class VendorAdminListController {

	
	@Autowired
	VendorAdminService vendorAdminService;
	
	@RequestMapping(value="/searchvendoradmin", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("vendorName") String vendorName,
			   ModelMap model) {
		List<VendorAdminModel> records = vendorAdminService.getVendorAdminList(vendorName);
		  model.addAttribute("records",records);
		  model.addAttribute("vendorName",vendorName);
	      return "/list/VendorAdminList";
	   }
	
	@RequestMapping(value="/vendorAdminDetail", method=RequestMethod.GET)
	public String redirectEquipAdminDetailPage(@RequestParam("vendorid") String vendorid, ModelMap model){
		List<VendorAdminModel> records = vendorAdminService.getVendorAdminDetailList(vendorid);
		model.addAttribute("record", records.get(0));
		return "/adminDetail/VendorAdmin";
	}
	@RequestMapping(value="/createVendorAdmin", method=RequestMethod.POST)
	public String createVendorAdminDetailPage(@ModelAttribute("vendorAdminForm") VendorAdminModel vendorAdminModel, ModelMap model){
		int success = vendorAdminService.createVendorAdminRecord(vendorAdminModel);
		return "/list/VendorAdminList";
	}
	

}
