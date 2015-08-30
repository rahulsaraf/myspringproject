/**
 * 
 */
package com.slicendice.medicare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.slicendice.medicare.model.Esr_Sr_SrDetailsModel;
import com.slicendice.medicare.service.ServiceDetailsService;



/**
 * @author Manasa Malleshappa
 *
 */
@Controller
public class ServiceDetailsListController {

	@Autowired
	ServiceDetailsService serviceDetails;
	
	@RequestMapping(value="/searchservicedetails", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		List<Esr_Sr_SrDetailsModel> records = serviceDetails.getServiceDetailsList(serialNo, assetNo);
		  model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/ServiceRequestDetailsList";
	   }
	
	@RequestMapping(value="/servicedetail", method=RequestMethod.GET)
	public String redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<Esr_Sr_SrDetailsModel> records = serviceDetails.getServiceDetailsList(serialNo, null);
		model.addAttribute("record", records.get(0));
		
		return "ServiceRequest";
	}
	
}
