/**
 * 
 */
package com.slicendice.medicare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.dao.UserAdminDao;
import com.slicendice.medicare.model.UserAdminModel;


/**
 * @author Rahul
 *
 */
@Service
public class UserAdminService {

	@Autowired
	UserAdminDao userAdminDao;
	
	public List<UserAdminModel> getUserAdminList(String equipName){
		return userAdminDao.getUserAdminList(equipName);
	}


	public List<UserAdminModel> getUserAdminDetailList(String equipId) {
		return userAdminDao.getUserAdminDetailList(equipId);
	}


	public int createUserAdminRecord(UserAdminModel userAdminModel) {
		return userAdminDao.createUserAdminRecord(userAdminModel);
	}


	public int updateUserAdminDetailPage(UserAdminModel userAdminModel) {
		return userAdminDao.updateUserAdminDetailPage(userAdminModel);
	}
	
}
