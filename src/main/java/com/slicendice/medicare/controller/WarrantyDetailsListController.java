package com.slicendice.medicare.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Esr_WarantyModel;
import com.slicendice.medicare.service.WarrantyDetailsService;


@Controller
public class WarrantyDetailsListController {
	
	@Autowired
	WarrantyDetailsService warrantyDetailsService;
	
	@RequestMapping(value="/searchwarrantydetails", method=RequestMethod.GET)
	   public String redirectWarrantyDetailsListPage(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		List<Esr_WarantyModel> records = warrantyDetailsService.getWarrantyDetailsList(serialNo, assetNo);
		  model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/WarrantyDetailsList";
	   }
	
	@RequestMapping(value="/warrantyDetail", method=RequestMethod.GET)
	public String redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<Esr_WarantyModel> records = warrantyDetailsService.getWarrantyDetailsList(serialNo, null);
		model.addAttribute("record", records.get(0));
		return "/serviceRecordDetail/WarrantyDetails";
	}
	
	@RequestMapping(value="/loadEquipmentDetailsForWarrenty", method=RequestMethod.GET)
	   public ModelAndView redirectLoadEquipmentDetailsForWarrenty(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		 Esr_WarantyModel warrentyModel;
		  if(!serialNo.isEmpty() || !assetNo.isEmpty()){
			   warrentyModel = warrantyDetailsService.getEquipmentDetails(serialNo, assetNo);  
		  }else{
			   warrentyModel = new Esr_WarantyModel();
		  }
		  return new ModelAndView("/create/createWarrantyDetails", "warrentyForm", warrentyModel);
	   }
	
	@RequestMapping(value="/createwarrantydetails", method=RequestMethod.POST)
	   public String createWarrantyDetails(@ModelAttribute("warrentyForm") Esr_WarantyModel esr_WarantyModel, ModelMap model) {
		int success = warrantyDetailsService.createWarrantyDetails(esr_WarantyModel);
		model.addAttribute("result",success);
	      return "/list/WarrantyDetailsList";
	   }
	
	 @RequestMapping(value = "/createWarrantyDetails", method = RequestMethod.GET)
	   public ModelAndView redirectCreateWarrentyDetails(ModelMap model,@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo, HttpServletRequest request) {
		   if(request.getSession().getAttribute("username") == null){
			   return new ModelAndView("Login");
			  }else{
				  Esr_WarantyModel warrentyModel;
				  if(!serialNo.isEmpty() || !assetNo.isEmpty()){
					   warrentyModel = warrantyDetailsService.getEquipmentDetails(serialNo, assetNo);  
				  }else{
					   warrentyModel = new Esr_WarantyModel();
				  }
				  
				  return new ModelAndView("/create/createWarrantyDetails", "warrentyForm", warrentyModel);
			  }
				  
	   }
	

}
