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
	public String redirectEquipAdminDetailPage(@RequestParam("userid") String userid, ModelMap model){
		List<UserAdminModel> records = userAdminService.getUserAdminDetailList(userid);
		model.addAttribute("record", records.get(0));
		return "UserAdmin";
	}
}