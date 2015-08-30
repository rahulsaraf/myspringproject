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

import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.service.UserAdminService;

/**
 * @author Rahul
 *
 */
@Controller
public class UserAdminListController {

	
	@Autowired
	UserAdminService userAdminService;
	
	@RequestMapping(value="/searchuseradmin", method=RequestMethod.POST)
	   public String redirectMedicalEquipListPage(@RequestParam("userName") String userName,
			   ModelMap model) {
		List<UserAdminModel> records = userAdminService.getUserAdminList(userName);
		  model.addAttribute("records",records);
		  model.addAttribute("userName",userName);
	      return "/list/UserAdminList";
	   }
	
	@RequestMapping(value="/userAdminDetail", method=RequestMethod.GET)
	public ModelAndView redirectEquipAdminDetailPage(@RequestParam("userid") String userid, ModelMap model){
		List<UserAdminModel> records = userAdminService.getUserAdminDetailList(userid);
		UserAdminModel userAdminModel = records.get(0);
		return new ModelAndView("/adminDetail/UserAdmin", "userAdminForm", userAdminModel);
	}
	
	@RequestMapping(value="/createUserAdmin", method=RequestMethod.POST)
	public String createUserAdminDetailPage(@ModelAttribute("userAdminForm") UserAdminModel userAdminModel, ModelMap model){
		int success = userAdminService.createUserAdminRecord(userAdminModel);
		return "/list/UserAdminList";
	}
	
	@RequestMapping(value="/updateUserAdmin", method=RequestMethod.POST)
	public ModelAndView updateUserAdminDetailPage(@ModelAttribute("userAdminForm") UserAdminModel userAdminModel, ModelMap model){
		int success = userAdminService.updateUserAdminDetailPage(userAdminModel);
		List<UserAdminModel> records = userAdminService.getUserAdminDetailList(String.valueOf(userAdminModel.getUserid()));
		UserAdminModel adminModel = records.get(0);
		 model.addAttribute("result",success);
		return new ModelAndView("/adminDetail/UserAdmin", "userAdminForm", adminModel);
		
	}
	
}