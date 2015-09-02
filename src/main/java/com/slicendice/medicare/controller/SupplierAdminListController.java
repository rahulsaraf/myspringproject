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
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.service.SupplierAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class SupplierAdminListController {

	
	@Autowired
	SupplierAdminService supplierAdminService;
	
	@RequestMapping(value="/searchsupplieradmin", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("supplierName") String supplierName,
			   ModelMap model) {
		List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminList(supplierName);
		  model.addAttribute("records",records);
		  model.addAttribute("supplierName",supplierName);
	      return "/list/SupplierAdminList";
	   }
	
	@RequestMapping(value="/supplierAdminDetail", method=RequestMethod.GET)
	public ModelAndView redirectEquipAdminDetailPage(@RequestParam("supplierid") String supplierId, ModelMap model){
		List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminDetailList(supplierId);
		SupplierAdminModel supplierAdminModel = records.get(0);
		return new ModelAndView("/adminDetail/SupplierAdmin", "supplierAdminForm", supplierAdminModel);
	}
	
	@RequestMapping(value="/createSupplierAdmin", method=RequestMethod.POST)
	public String createSupplierAdminDetailPage(@ModelAttribute("supplierAdminForm") SupplierAdminModel supplierAdminModel, ModelMap model){
		int success = supplierAdminService.createSupplierAdminRecord(supplierAdminModel);
		model.addAttribute("supplierAdminForm", supplierAdminModel);
		model.addAttribute("result", success);
		if(success != 1){
			return "/create/createSupplierAdmin";
		}
		List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminList("");
		  model.addAttribute("records",records);
		return "/list/SupplierAdminList";
	}
	
	@RequestMapping(value="/updateSupplierAdmin", method=RequestMethod.POST)
	public ModelAndView updateSupplierAdminDetailPage(@ModelAttribute("supplierAdminForm") SupplierAdminModel supplierAdminModel, ModelMap model){
		int success = supplierAdminService.updateSupplierAdminRecord(supplierAdminModel);
		List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminDetailList(String.valueOf(supplierAdminModel.getSupplierid()));
		SupplierAdminModel adminModel = records.get(0);
		model.addAttribute("result", success);
		return new ModelAndView("/adminDetail/SupplierAdmin", "supplierAdminForm", adminModel);
	}
	
	@RequestMapping(value="/deleteSupplierAdminRecord",method=RequestMethod.GET)
	 public String deleteSupplierAdminRecord(@RequestParam("supplierId") String equipId,
			   ModelMap model) {
		  int success = supplierAdminService.deleteEquipMentAdminRecord(equipId);
			List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminList("");
			  model.addAttribute("records",records);
	      return "/list/SupplierAdminList";
	   }

}
