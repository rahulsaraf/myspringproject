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

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.Equip_Records;
import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.service.EquipmentAdminService;
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
	public String redirectEquipAdminDetailPage(@RequestParam("supplierid") String supplierId, ModelMap model){
		List<SupplierAdminModel> records = supplierAdminService.getSupplierAdminDetailList(supplierId);
		model.addAttribute("record", records.get(0));
		return "SupplierAdmin";
	}

}
