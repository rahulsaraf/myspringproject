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

import com.slicendice.medicare.model.ESR_SR_Schd_MtModel;
import com.slicendice.medicare.service.ScheduledMaintenanceService;



/**
 * @author Manasa Malleshappa
 *
 */
@Controller
public class ScheduledMaintenanceListController {

	@Autowired
	ScheduledMaintenanceService scheduledMaintenanceService;
	
	@RequestMapping(value="/searchschedule", method=RequestMethod.POST)
	   public String redirectScheduleMaintenanceListPage(@RequestParam("assetNo") String assetNo,@RequestParam("serialNo") String serialNo,
			   ModelMap model) {
		List<ESR_SR_Schd_MtModel> records = scheduledMaintenanceService.getScheduledMaintenanceList(serialNo,assetNo);
		  model.addAttribute("records",records);
		  model.addAttribute("assetNo",assetNo);
		  model.addAttribute("serialNo",serialNo);
	      return "/list/ScheduledMaintenanceList";
	   }
	
	@RequestMapping(value="/scheduledetail", method=RequestMethod.GET)
	public String redirectDetailPage(@RequestParam("serialNo") String serialNo, ModelMap model){
		List<ESR_SR_Schd_MtModel> records = scheduledMaintenanceService.getScheduledMaintenanceList(serialNo, null);
		model.addAttribute("record", records.get(0));
		
		return "ScheduledMaintenance";
	}
	
}
