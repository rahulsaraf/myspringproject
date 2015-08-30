/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.ScheduledMaintenanceDao;
import com.slicendice.medicare.model.ESR_SR_Schd_MtModel;



/**
 * @author Manasa Malleshappa
 *
 */
@Service
public class ScheduledMaintenanceService {

	@Autowired
	 ScheduledMaintenanceDao scheduledMaintenanceDao;
	
	public List<ESR_SR_Schd_MtModel> getScheduledMaintenanceList(String serialNo, String assetNo){
		return scheduledMaintenanceDao.getScheduledMaintenanceList(serialNo, assetNo);
	}
	
}
