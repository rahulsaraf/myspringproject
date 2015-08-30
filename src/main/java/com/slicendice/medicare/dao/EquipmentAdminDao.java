/**
 * 
 */
package com.slicendice.medicare.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slicendice.medicare.common.DBConnector;
import com.slicendice.medicare.mapper.EquipmentAdminMapper;
import com.slicendice.medicare.model.EquipAdminModel;


/**
 * @author Rahul
 *
 */
@Service
public class EquipmentAdminDao {

	@Autowired
	DBConnector connector;
	
	public List<EquipAdminModel> getEquipmentAdminList(String equipName){
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_admin ";
		List<EquipAdminModel> records = new ArrayList<EquipAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != equipName && !equipName.isEmpty()){
			SQL = SQL + "WHERE EQP_NAME LIKE ? ";
			params.add("%"+equipName+"%");
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new EquipmentAdminMapper());
		return records;
	}

	public List<EquipAdminModel> getEquipAdminDetailList(String equipId) {
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_admin ";
		List<EquipAdminModel> records = new ArrayList<EquipAdminModel>();
		List<String> params = new ArrayList<String>();
		if(null != equipId && !equipId.isEmpty()){
			SQL = SQL + "WHERE eqp_id = ?";
			params.add(equipId);
		}
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new EquipmentAdminMapper());
		return records;	}

	public int createEquipmentAdminRecord(EquipAdminModel equipAdminModel) {
		String SQL = "INSERT INTO pems_database.equip_admin(int_asset_no,serial_no,eqp_name,eqp_desc,"
				+ "eqp_del_date,manf_name,vendor_name,supplier_name,model_no,equip_type,invoice_no,"
				+ "equip_class,invoice_date,category,wrty_type,sub_ctgry,wrty_end_date,st_comp,doc_rvcd,"
				+ "equip_manuals,service_manuals,ote_needed,calib_certi,accessories,trng_done,dept_trnd,"
				+ "spares_List,add_re,isactive,created_date)"
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return connector.getJdbcTemplateObject().update(SQL,
				equipAdminModel.getInt_Asset_no(),
				equipAdminModel.getSerial_No(),
				equipAdminModel.getEqp_Name(),
				equipAdminModel.getEqp_Desc(),
				equipAdminModel.getEqp_Del_Date(),
				equipAdminModel.getManf_Name(),
				equipAdminModel.getVendor_Name(),
				equipAdminModel.getSupplier_Name(),
				equipAdminModel.getModel_No(),
				equipAdminModel.getEquip_Type(),
				equipAdminModel.getInvoice_No(),
				equipAdminModel.getEquip_Class(),
				equipAdminModel.getInvoice_Date(),
				equipAdminModel.getCategory(),
				equipAdminModel.getWrty_Type(),
				equipAdminModel.getSub_Ctgry(),
				equipAdminModel.getWrty_End_Date(),
				equipAdminModel.getST_Comp(),
				equipAdminModel.getDoc_rcvd(),
				equipAdminModel.getEquip_Manuals(),
				equipAdminModel.getService_Manuals(),
				equipAdminModel.getOTE_Needed(),
				equipAdminModel.getCalib_Certi(),
				equipAdminModel.getAccessories(),
				equipAdminModel.getTrng_Done(),
				equipAdminModel.getDept_Trnd(),
				equipAdminModel.getSpares_List(),
				equipAdminModel.getAdd_Re(),
				equipAdminModel.getIsActive(),
				equipAdminModel.getCreated_Date()
				);
		}

	public int updateEquipmentAdminRecord(EquipAdminModel equipAdminModel) {
		
		String SQL = "UPDATE pems_database.equip_admin SET int_asset_no = ?  ,"
				+ "serial_no = ?  ,eqp_name = ?  ,eqp_desc = ?  ,eqp_del_date = ?  ,manf_name = ?  ,"
				+ "vendor_name = ?  ,supplier_name = ?  ,model_no = ?  ,equip_type = ?  ,invoice_no = ?  "
				+ ",equip_class = ?  ,invoice_date = ?  ,category = ?  ,wrty_type = ?  ,sub_ctgry = ? "
				+ " ,wrty_end_date = ?  ,st_comp = ?  ,doc_rvcd = ?  ,equip_manuals = ?  "
				+ ",service_manuals = ?  ,ote_needed = ?  ,calib_certi = ?  ,accessories = ?  "
				+ ",trng_done = ? ,dept_trnd = ?  ,spares_List = ?  ,add_re = ?  "
				+ "  WHERE eqp_id = ? ";
		return connector.getJdbcTemplateObject().update(SQL, equipAdminModel.getInt_Asset_no(),
				equipAdminModel.getSerial_No(),
				equipAdminModel.getEqp_Name(),
				equipAdminModel.getEqp_Desc(),
				equipAdminModel.getEqp_Del_Date(),
				equipAdminModel.getManf_Name(),
				equipAdminModel.getVendor_Name(),
				equipAdminModel.getSupplier_Name(),
				equipAdminModel.getModel_No(),
				equipAdminModel.getEquip_Type(),
				equipAdminModel.getInvoice_No(),
				equipAdminModel.getEquip_Class(),
				equipAdminModel.getInvoice_Date(),
				equipAdminModel.getCategory(),
				equipAdminModel.getWrty_Type(),
				equipAdminModel.getSub_Ctgry(),
				equipAdminModel.getWrty_End_Date(),
				equipAdminModel.getST_Comp(),
				equipAdminModel.getDoc_rcvd(),
				equipAdminModel.getEquip_Manuals(),
				equipAdminModel.getService_Manuals(),
				equipAdminModel.getOTE_Needed(),
				equipAdminModel.getCalib_Certi(),
				equipAdminModel.getAccessories(),
				equipAdminModel.getTrng_Done(),
				equipAdminModel.getDept_Trnd(),
				equipAdminModel.getSpares_List(),
				equipAdminModel.getAdd_Re(),equipAdminModel.getEqp_id());
		
	
	}

	public boolean getEquipAdminDetailList(String int_Asset_no, String serial_no) {
		String SQL;
		SQL = "SELECT * FROM pems_database.equip_admin ";
		List<EquipAdminModel> records = new ArrayList<EquipAdminModel>();
		List<String> params = new ArrayList<String>();
			SQL = SQL + "WHERE Int_Asset_no = ? and Serial_No = ? ";
			params.add(int_Asset_no);
			params.add(serial_no);
		records = connector.getJdbcTemplateObject().query(SQL,params.toArray(), new EquipmentAdminMapper());
		if(records.size() > 0)
			return true;
		else
			return false;
	}
}
