/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.UserAdminMapper;
import com.slicendice.medicare.model.UserAdminModel;



/**
 * @author Rahul 
 *
 */
@Service
public class UserAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<UserAdminModel> getUserAdminList(String loginId){
		String SQL;
		SQL = "SELECT * FROM pems_database.User_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != loginId && !loginId.isEmpty()){
			SQL = SQL + "WHERE Login_ID LIKE ? and isactive = ?";
			params.add("%"+loginId+"%");
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;
	}

	public List<UserAdminModel> getUserAdminDetailList(String userid) {
		String SQL;
		SQL = "SELECT * FROM pems_database.User_admin ";
		List<UserAdminModel> records = new ArrayList<UserAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != userid && !userid.isEmpty()){
			SQL = SQL + "WHERE usr_name = ? and isactive = ?";
			params.add(userid);
			params.add("1");
		}else{
			SQL = SQL + "WHERE isactive = ?";
			params.add("1");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new UserAdminMapper());
		return records;	
		}
	public int createUserAdminRecord(UserAdminModel userAdminModel) {
		String SQL = "INSERT INTO pems_database.user_admin(Organisation,Department,"
				+ "Section,F_Name,L_Name,Emp_ID,Usr_Ct_Phone,Alt_phone,Email_ID,"
				+ "Login_ID,Password,Confirm_Password,Manager_Name,Manager_Id,User_Access,"
				+ "IsActive,Created_Date)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		 return connector.getJdbcTemplateObject().update(SQL,
				 userAdminModel.getOrganisation(),
				 userAdminModel.getDepartment(),
				 userAdminModel.getSection(),
				 userAdminModel.getF_Name(),
				 userAdminModel.getL_Name(),
				 userAdminModel.getEmp_ID(),
				 userAdminModel.getUsr_Ct_Phone(),
				 userAdminModel.getAlt_phone(),
				 userAdminModel.getEmail_ID(),
				 userAdminModel.getLogin_ID(),
				 userAdminModel.getPassword(),
				 userAdminModel.getConfirm_Password(),
				 userAdminModel.getManager_Name(),
				 userAdminModel.getManager_Id(),
				 userAdminModel.getUser_Access(),
				 userAdminModel.getIsActive(),
				 userAdminModel.getCreated_Date()
				 );
	}

	public int updateUserAdminDetailPage(UserAdminModel userAdminModel) {
		String SQL = "UPDATE pems_database.user_admin SET Organisation = ?  ,Department = ?  ,Section = ? "
				+ " ,F_Name = ?  ,L_Name = ?  ,Emp_ID = ?  ,Usr_Ct_Phone = ?  ,Alt_phone = ?  ,Email_ID = ?  "
				+ ",Login_ID = ?  ,Password = ?  ,Confirm_Password = ?  ,Manager_Name = ?  ,Manager_Id = ? "
				+ " ,User_Access = ?    WHERE usr_name = ?  ;";
		 return connector.getJdbcTemplateObject().update(SQL,userAdminModel.getOrganisation(),
				 userAdminModel.getDepartment(),
				 userAdminModel.getSection(),
				 userAdminModel.getF_Name(),
				 userAdminModel.getL_Name(),
				 userAdminModel.getEmp_ID(),
				 userAdminModel.getUsr_Ct_Phone(),
				 userAdminModel.getAlt_phone(),
				 userAdminModel.getEmail_ID(),
				 userAdminModel.getLogin_ID(),
				 userAdminModel.getPassword(),
				 userAdminModel.getConfirm_Password(),
				 userAdminModel.getManager_Name(),
				 userAdminModel.getManager_Id(),
				 userAdminModel.getUser_Access(),
				 userAdminModel.getUserid());
	}

	public int deleteEquipMentAdminRecord(String equipId) {
		String SQL = "UPDATE pems_database.user_admin SET IsActive = ?  where usr_name = ?";
		return connector.getJdbcTemplateObject().update(SQL,0,equipId);
	}
}
