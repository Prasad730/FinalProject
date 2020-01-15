package gov.model;

import org.springframework.stereotype.Component;

@Component
public class GovtConsumer {
private String name;
private String Password;
private String EmailId;
private String ContactNo;
private String Suburb;
private String City;
private String Address_String;
private String Pincode;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getEmailId() {
	return EmailId;
}
public void setEmailId(String emailId) {
	EmailId = emailId;
}
public String getContactNo() {
	return ContactNo;
}
public void setContactNo(String contactNo) {
	ContactNo = contactNo;
}
public String getSuburb() {
	return Suburb;
}
public void setSuburb(String suburb) {
	Suburb = suburb;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getAddress_String() {
	return Address_String;
}
public void setAddress_String(String address_string) {
	Address_String = address_string;
}
public String getPincode() {
	return Pincode;
}
public void setPincode(String pincode) {
	Pincode = pincode;
}
}
