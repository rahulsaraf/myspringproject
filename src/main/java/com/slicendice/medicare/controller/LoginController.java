package com.slicendice.medicare.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.slicendice.medicare.model.UserAdminModel;
import com.slicendice.medicare.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginservice;
	
	@RequestMapping(value="/Loginapp", method=RequestMethod.POST)
	   public String redirectLogin(@RequestParam("username") String username,
			   @RequestParam("password") String password,
			   ModelMap model,HttpServletRequest request) {
		
		List<UserAdminModel> valid=loginservice.validateUser(username,password);
		if(null != valid && !valid.isEmpty()){
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("userAccess", valid.get(0).getUser_Access());
			return "welcome";
		}else{
			model.addAttribute("result",0);
			return "Login";
		}
	   }
}
