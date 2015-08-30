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

import com.slicendice.medicare.model.Esr_CtrtModel;
import com.slicendice.medicare.service.AnnualContractService;



/**
 * @author Manasa Malleshappa
 *
 */
@Controller
public class AnnualContractListController {

	@Autowired
	AnnualContractService annualContractService;
	
	@RequestMapping(value="/searchannualcontractdetails", method=RequestMethod.POST)
	   public String redirectAnnualContractDetailsListPage(@RequestParam("serialNo") String serialNo,
			   @RequestParam("assetNo") String assetNo,
			   ModelMap model) {
		List<Esr_CtrtModel> records = annualContractService.getAnnualContractList(serialNo, assetNo);
		  model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/AnnualContractDetailsList";
	   }
	
	@RequestMapping(value="/annualcontractDetail", method=RequestMethod.GET)
	public String redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<Esr_CtrtModel> records = annualContractService.getAnnualContractList(serialNo, null);
		model.addAttribute("record", records.get(0));
		
		return "AnnualContractDetails";
	}
	
}
