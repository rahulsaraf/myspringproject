package com.slicendice.medicare.model;
import java.util.Date;

public class EquipAdminModel {

private int eqp_id;
private String eqp_Name;
private String eqp_Desc;
private Date eqp_Del_Date;
private String Manf_Name;
private String Vendor_Name;
private String Supplier_Name;
private String Model_No;
private String Serial_No;
private String Int_Asset_no;
private String Equip_Type;
private String Invoice_No;
private String Equip_Class;
private Date Invoice_Date;
private String Category;
private String Wrty_Type;
private String Sub_Ctgry;
private Date Wrty_End_Date;
private String ST_Comp;
private String Doc_rcvd;
private String Equip_Manuals;
private String Service_Manuals;
private String OTE_Needed;
private String Calib_Certi;
private String Accessories;
private String Trng_Done;
private String Dept_Trnd;
private String Spares_List;
private String Add_Re;
private short IsActive;
private Date Created_Date;

public EquipAdminModel()
{
	
}

public EquipAdminModel(String eqp_Name, String eqp_Desc, Date eqp_Del_Date,
		String manf_Name, String vendor_Name, String supplier_Name,
		String model_No, String serial_No, String int_Asset_no,
		String equip_Type, String invoice_No, String equip_Class,
		Date invoice_Date, String category, String wrty_Type, String sub_Ctgry,
		Date wrty_End_Date, String sT_Comp, String doc_rcvd,
		String equip_Manuals, String service_Manuals, String oTE_Needed,
		String calib_Certi, String accessories, String trng_Done,
		String dept_Trnd, String spares_List, String add_Re, short isActive,
		Date created_Date) {
	super();
	this.eqp_Name = eqp_Name;
	this.eqp_Desc = eqp_Desc;
	this.eqp_Del_Date = eqp_Del_Date;
	Manf_Name = manf_Name;
	Vendor_Name = vendor_Name;
	Supplier_Name = supplier_Name;
	Model_No = model_No;
	Serial_No = serial_No;
	Int_Asset_no = int_Asset_no;
	Equip_Type = equip_Type;
	Invoice_No = invoice_No;
	Equip_Class = equip_Class;
	Invoice_Date = invoice_Date;
	Category = category;
	Wrty_Type = wrty_Type;
	Sub_Ctgry = sub_Ctgry;
	Wrty_End_Date = wrty_End_Date;
	ST_Comp = sT_Comp;
	Doc_rcvd = doc_rcvd;
	Equip_Manuals = equip_Manuals;
	Service_Manuals = service_Manuals;
	OTE_Needed = oTE_Needed;
	Calib_Certi = calib_Certi;
	Accessories = accessories;
	Trng_Done = trng_Done;
	Dept_Trnd = dept_Trnd;
	Spares_List = spares_List;
	Add_Re = add_Re;
	IsActive = isActive;
	Created_Date = created_Date;
}

public int getEqp_id() {
	return eqp_id;
}

public void setEqp_id(int eqp_id) {
	this.eqp_id = eqp_id;
}

public String getEqp_Name() {
	return eqp_Name;
}

public void setEqp_Name(String eqp_Name) {
	this.eqp_Name = eqp_Name;
}

public String getEqp_Desc() {
	return eqp_Desc;
}

public void setEqp_Desc(String eqp_Desc) {
	this.eqp_Desc = eqp_Desc;
}

public Date getEqp_Del_Date() {
	return eqp_Del_Date;
}

public void setEqp_Del_Date(Date eqp_Del_Date) {
	this.eqp_Del_Date = eqp_Del_Date;
}

public String getManf_Name() {
	return Manf_Name;
}

public void setManf_Name(String manf_Name) {
	Manf_Name = manf_Name;
}

public String getVendor_Name() {
	return Vendor_Name;
}

public void setVendor_Name(String vendor_Name) {
	Vendor_Name = vendor_Name;
}

public String getSupplier_Name() {
	return Supplier_Name;
}

public void setSupplier_Name(String supplier_Name) {
	Supplier_Name = supplier_Name;
}

public String getModel_No() {
	return Model_No;
}

public void setModel_No(String model_No) {
	Model_No = model_No;
}

public String getSerial_No() {
	return Serial_No;
}

public void setSerial_No(String serial_No) {
	Serial_No = serial_No;
}

public String getInt_Asset_no() {
	return Int_Asset_no;
}

public void setInt_Asset_no(String int_Asset_no) {
	Int_Asset_no = int_Asset_no;
}

public String getEquip_Type() {
	return Equip_Type;
}

public void setEquip_Type(String equip_Type) {
	Equip_Type = equip_Type;
}

public String getInvoice_No() {
	return Invoice_No;
}

public void setInvoice_No(String invoice_No) {
	Invoice_No = invoice_No;
}

public String getEquip_Class() {
	return Equip_Class;
}

public void setEquip_Class(String equip_Class) {
	Equip_Class = equip_Class;
}

public Date getInvoice_Date() {
	return Invoice_Date;
}

public void setInvoice_Date(Date invoice_Date) {
	Invoice_Date = invoice_Date;
}

public String getCategory() {
	return Category;
}

public void setCategory(String category) {
	Category = category;
}

public String getWrty_Type() {
	return Wrty_Type;
}

public void setWrty_Type(String wrty_Type) {
	Wrty_Type = wrty_Type;
}

public String getSub_Ctgry() {
	return Sub_Ctgry;
}

public void setSub_Ctgry(String sub_Ctgry) {
	Sub_Ctgry = sub_Ctgry;
}

public Date getWrty_End_Date() {
	return Wrty_End_Date;
}

public void setWrty_End_Date(Date wrty_End_Date) {
	Wrty_End_Date = wrty_End_Date;
}

public String getST_Comp() {
	return ST_Comp;
}

public void setST_Comp(String sT_Comp) {
	ST_Comp = sT_Comp;
}

public String getDoc_rcvd() {
	return Doc_rcvd;
}

public void setDoc_rcvd(String doc_rcvd) {
	Doc_rcvd = doc_rcvd;
}

public String getEquip_Manuals() {
	return Equip_Manuals;
}

public void setEquip_Manuals(String equip_Manuals) {
	Equip_Manuals = equip_Manuals;
}

public String getService_Manuals() {
	return Service_Manuals;
}

public void setService_Manuals(String service_Manuals) {
	Service_Manuals = service_Manuals;
}

public String getOTE_Needed() {
	return OTE_Needed;
}

public void setOTE_Needed(String oTE_Needed) {
	OTE_Needed = oTE_Needed;
}

public String getCalib_Certi() {
	return Calib_Certi;
}

public void setCalib_Certi(String calib_Certi) {
	Calib_Certi = calib_Certi;
}

public String getAccessories() {
	return Accessories;
}

public void setAccessories(String accessories) {
	Accessories = accessories;
}

public String getTrng_Done() {
	return Trng_Done;
}

public void setTrng_Done(String trng_Done) {
	Trng_Done = trng_Done;
}

public String getDept_Trnd() {
	return Dept_Trnd;
}

public void setDept_Trnd(String dept_Trnd) {
	Dept_Trnd = dept_Trnd;
}

public String getSpares_List() {
	return Spares_List;
}

public void setSpares_List(String spares_List) {
	Spares_List = spares_List;
}

public String getAdd_Re() {
	return Add_Re;
}

public void setAdd_Re(String add_Re) {
	Add_Re = add_Re;
}

public short getIsActive() {
	return IsActive;
}

public void setIsActive(short isActive) {
	IsActive = isActive;
}

public Date getCreated_Date() {
	return Created_Date;
}

public void setCreated_Date(Date created_Date) {
	Created_Date = created_Date;
}

}
