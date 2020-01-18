package gov.model;

import org.springframework.stereotype.Component;

@Component
public class AreaComplaints {

	private int AreaId;
	private String AreaName;
	private String Pincode;
	
	private int SubAreaId;
	private String SubAreaName;
	private int ComplainId;
	private String Complain_Category;
	private String Complain_Heading;
	private String Description;
	public int getAreaId() {
		return AreaId;
	}
	public void setAreaId(int areaId) {
		AreaId = areaId;
	}
	public String getAreaName() {
		return AreaName;
	}
	public void setAreaName(String areaName) {
		AreaName = areaName;
	}
	public String getPincode() {
		return Pincode;
	}
	public void setPincode(String pincode) {
		Pincode = pincode;
	}
	public int getSubAreaId() {
		return SubAreaId;
	}
	public void setSubAreaId(int subAreaId) {
		SubAreaId = subAreaId;
	}
	public String getSubAreaName() {
		return SubAreaName;
	}
	public void setSubAreaName(String subAreaName) {
		SubAreaName = subAreaName;
	}
	public int getComplainId() {
		return ComplainId;
	}
	public void setComplainId(int complainId) {
		ComplainId = complainId;
	}
	public String getComplain_Category() {
		return Complain_Category;
	}
	public void setComplain_Category(String complain_Category) {
		Complain_Category = complain_Category;
	}
	public String getComplain_Heading() {
		return Complain_Heading;
	}
	public void setComplain_Heading(String complain_Heading) {
		Complain_Heading = complain_Heading;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	@Override
	public String toString() {
		return AreaName ;
	}
	
	
	
	
	
}
