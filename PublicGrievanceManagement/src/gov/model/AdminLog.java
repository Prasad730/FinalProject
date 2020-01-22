package gov.model;

public class AdminLog {

	private int ComplainId;
	private String ConsumerName;
	private String Complain_Category;
	private String Complain_Heading;
	private String Description;
	private String Image;
	private String Affected_Address;
	private String Admin_Name;
	private String Admin_Email;
	public int getComplainId() {
		return ComplainId;
	}
	public void setComplainId(int complainId) {
		ComplainId = complainId;
	}
	public String getConsumerName() {
		return ConsumerName;
	}
	public void setConsumerName(String consumerName) {
		ConsumerName = consumerName;
	}
	
	/*@Override
	public String toString() {
		return "AdminLog [ComplainId=" + ComplainId + ", ConsumerName=" + ConsumerName + ", Complain_Category="
				+ Complain_Category + ", Complain_Heading=" + Complain_Heading + ", Description=" + Description
				+ ", Image=" + Image + ", Affected_Address=" + Affected_Address + ", Admin_Name=" + Admin_Name
				+ ", Admin_Email=" + Admin_Email + "]";
	}*/
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
	public String getAffected_Address() {
		return Affected_Address;
	}
	public void setAffected_Address(String affected_Address) {
		Affected_Address = affected_Address;
	}
	public String getAdmin_Name() {
		return Admin_Name;
	}
	public void setAdmin_Name(String admin_Name) {
		Admin_Name = admin_Name;
	}
	public String getAdmin_Email() {
		return Admin_Email;
	}
	public void setAdmin_Email(String admin_Email) {
		Admin_Email = admin_Email;
	}
	
	
}
