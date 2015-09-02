/**
 * 
 */
package com.slicendice.medicare.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.slicendice.medicare.model.EquipAdminModel;
import com.slicendice.medicare.model.SupplierAdminModel;
import com.slicendice.medicare.model.VendorAdminModel;
import com.slicendice.medicare.service.EquipmentAdminService;
import com.slicendice.medicare.service.SupplierAdminService;
import com.slicendice.medicare.service.VendorAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class EquipmentAdminListController {
	@Autowired
	EquipmentAdminService equipmentAdminService;
	
	@Autowired
	SupplierAdminService supplierAdminService;
	
	@Autowired
	VendorAdminService vendorAdminService;
	
	@RequestMapping(value="/searchequipmentadmin", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("equipName") String equipName,
			   ModelMap model) {
		List<EquipAdminModel> records = equipmentAdminService.getEquipmentAdminList(equipName);
		  model.addAttribute("records",records);
		  model.addAttribute("equipName",equipName);
	      return "/list/EquipmentAdminList";
	   }
	
	@RequestMapping(value="/equipmentAdminDetail", method=RequestMethod.GET)
	public ModelAndView redirectEquipAdminDetailPage(@RequestParam("equipId") String equipId, ModelMap model) throws ParseException{
		List<EquipAdminModel> records = equipmentAdminService.getEquipAdminDetailList(equipId);
		 List<SupplierAdminModel> supplierRecords = supplierAdminService.getSupplierAdminList("");
		  	model.addAttribute("supplierAdminList",supplierRecords);
		  	List<VendorAdminModel> vendorRecords = vendorAdminService.getVendorAdminList("");
			  model.addAttribute("vendorAdminList",vendorRecords);
		EquipAdminModel adminModel = records.get(0);
		model.addAttribute("record", adminModel);
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 if(null != adminModel.getWrty_End_Date())
		 adminModel.setWrty_End_Date(format.parse(adminModel.getWrty_End_Date().toString()));
		 if(null != adminModel.getEqp_Del_Date())
		 adminModel.setEqp_Del_Date(format.parse(adminModel.getEqp_Del_Date().toString()));
		 if(null != adminModel.getInvoice_Date())
		 adminModel.setInvoice_Date(format.parse(adminModel.getInvoice_Date().toString()));
		return new ModelAndView("/adminDetail/EquipAdmin", "equipmentAdminForm", adminModel);
	}
	
	@RequestMapping(value="/createEquipAdmin", method=RequestMethod.POST)
	public String createEquipAdminDetailPage(@ModelAttribute("equipmentAdminForm") EquipAdminModel equipAdminModel, ModelMap model){
		int success = equipmentAdminService.createEquipmentAdminRecord(equipAdminModel);
		model.addAttribute("equipAdminModel", equipAdminModel);
		model.addAttribute("result", success);
		if(success == 1){
			List<EquipAdminModel> records = equipmentAdminService.getEquipmentAdminList("");
			  model.addAttribute("records",records);
			return "/list/EquipmentAdminList";			
		}else{
			return "/create/createEquipAdmin";
		}
	}
	
	@RequestMapping(value="/updateEquipmentDetails", method=RequestMethod.POST)
	public ModelAndView updateEquipAdminDetailPage(@ModelAttribute("equipmentAdminForm") EquipAdminModel equipAdminModel, ModelMap model) throws ParseException{
		
		equipAdminModel.setSupplier_id(equipAdminModel.getSupplier_Name().split(":")[0].trim());
		equipAdminModel.setVendor_id(equipAdminModel.getVendor_Name().split(":")[0].trim());
		int success = equipmentAdminService.updateEquipmentAdminRecord(equipAdminModel);
		List<EquipAdminModel> records = equipmentAdminService.getEquipAdminDetailList(String.valueOf(equipAdminModel.getEqp_id()));
		EquipAdminModel adminModel = records.get(0);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		adminModel.setWrty_End_Date(format.parse(adminModel.getWrty_End_Date().toString()));
		adminModel.setEqp_Del_Date(format.parse(adminModel.getEqp_Del_Date().toString()));
		adminModel.setInvoice_Date(format.parse(adminModel.getInvoice_Date().toString()));
		
		 List<SupplierAdminModel> supplierRecords = supplierAdminService.getSupplierAdminList("");
		  	model.addAttribute("supplierAdminList",supplierRecords);
		  	List<VendorAdminModel> vendorRecords = vendorAdminService.getVendorAdminList("");
			  model.addAttribute("vendorAdminList",vendorRecords);
		
		
		model.addAttribute("record", adminModel);
		model.addAttribute("result", success);
		
		return new ModelAndView("/adminDetail/EquipAdmin", "equipmentAdminForm", adminModel);
	}
	
	@RequestMapping(value="/deleteEquipMentAdminRecord",method=RequestMethod.GET)
	 public String deleteEquipMentAdminRecord(@RequestParam("equipId") String equipId,
			   ModelMap model) {
		  int success = equipmentAdminService.deleteEquipMentAdminRecord(equipId);
			List<EquipAdminModel> records = equipmentAdminService.getEquipmentAdminList("");
			  model.addAttribute("records",records);
	      return "/list/EquipmentAdminList";
	   }
	
	
}
