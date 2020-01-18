package gov.model;

import org.springframework.stereotype.Component;

@Component
public class SubArea {

	private int SubAreaId;
	private int AreaId;
	private String SubAreaName;
	public int getSubAreaId() {
		return SubAreaId;
	}
	public void setSubAreaId(int subAreaId) {
		SubAreaId = subAreaId;
	}
	public int getAreaId() {
		return AreaId;
	}
	public void setAreaId(int areaId) {
		AreaId = areaId;
	}
	public String getSubAreaName() {
		return SubAreaName;
	}
	public void setSubAreaName(String subAreaName) {
		SubAreaName = subAreaName;
	}
	
	
	
	
}
