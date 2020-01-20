package gov.model;

import java.sql.Blob;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Indexed;

@Component
public class Complaints {

	private int ComplainId;
	private String ConsumerName;
	private int AreaId;
	private int SubAreaId;
	private String Complain_Category;
	private String Complain_Heading;
	private String Description;
	private String Image;
	private String Affected_Address;

	
	public String getAffected_Address() {
		return Affected_Address;
	}
	public void setAffected_Address(String affected_Address) {
		Affected_Address = affected_Address;
	}
	public int getComplainId() {
		return ComplainId;
	}
	public void setComplainId(int complainId) {
		ComplainId = complainId;
	}
	public int getAreaId() {
		return AreaId;
	}
	
	public String getConsumerName() {
		return ConsumerName;
	}
	public void setConsumerName(String consumerName) {
		ConsumerName = consumerName;
	}
	public void setAreaId(int areaId) {
		AreaId = areaId;
	}
	public int getSubAreaId() {
		return SubAreaId;
	}
	public void setSubAreaId(int subAreaId) {
		SubAreaId = subAreaId;
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
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	
	
}
