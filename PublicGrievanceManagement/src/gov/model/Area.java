package gov.model;

import org.springframework.stereotype.Component;

@Component
public class Area {

	private int AreaId;
	private String AreaName;
	private String Pincode;
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
}
