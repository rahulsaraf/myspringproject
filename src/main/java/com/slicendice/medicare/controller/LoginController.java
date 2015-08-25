package com.slicendice.medicare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.slicendice.medicare.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginservice;
	
	@RequestMapping(value="/Loginapp", method=RequestMethod.POST)
	   public String redirectLogin(@RequestParam("username") String username,
			   @RequestParam("password") String password,
			   ModelMap model) {
		//List<Equip_Records> records = medicalEquipmentService.getMedicalEquipmentList(serialNo, assetNo);
		
		boolean valid=loginservice.validateUser(username,password);
		 /* model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);*/
		if(valid)
		{
		model.addAttribute("username",username);
	      return "welcome";
		}
		else
		{
			return "unsuccessful";
		}
	   }

}
