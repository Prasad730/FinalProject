package gov.model;

public class CompStatus {
	
	private int StatusId;
	private String Status;
	private int ComplainId;
	private int ComplainId1;
	
	
	
	public int getComplainId1() {
		return ComplainId1;
	}

	public void setComplainId1(int complainId1) {
		ComplainId1 = complainId1;
	}

	public int getStatusId() {
		return StatusId;
	}

	public void setStatusId(int statusId) {
		StatusId = statusId;
	}

	public int getComplainId() {
		return ComplainId;
	}
	
	public void setComplainId(int complainId) {
		ComplainId = complainId;
	}
	
	public String getStatus() {
		return Status;
	}
	
	public void setStatus(String status) {
		Status = status;
	}
}
