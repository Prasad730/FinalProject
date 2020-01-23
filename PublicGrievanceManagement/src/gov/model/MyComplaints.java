package gov.model;

public class MyComplaints {

	private int ComplainId;
	private int ConsumerId;
	private String ConsumerName;
	private String Complain_Category;
	private String Complain_Heading;
	private String Description;
	private String Image;
	private String Affected_Address;
	private String Status;
	public int getComplainId() {
		return ComplainId;
	}
	public void setComplainId(int complainId) {
		ComplainId = complainId;
	}
	public int getConsumerId() {
		return ConsumerId;
	}
	public void setConsumerId(int consumerId) {
		ConsumerId = consumerId;
	}
	public String getConsumerName() {
		return ConsumerName;
	}
	public void setConsumerName(String consumerName) {
		ConsumerName = consumerName;
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
	public String getAffected_Address() {
		return Affected_Address;
	}
	public void setAffected_Address(String affected_Address) {
		Affected_Address = affected_Address;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "MyComplaints [ComplainId=" + ComplainId + ", ConsumerId=" + ConsumerId + ", ConsumerName="
				+ ConsumerName + ", Complain_Category=" + Complain_Category + ", Complain_Heading=" + Complain_Heading
				+ ", Description=" + Description + ", Image=" + Image + ", Affected_Address=" + Affected_Address
				+ ", Status=" + Status + "]";
	}
	
	
}
