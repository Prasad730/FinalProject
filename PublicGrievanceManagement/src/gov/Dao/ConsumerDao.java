package gov.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import gov.model.Admin;
import gov.model.AdminLog;
import gov.model.AreaComplaints;
import gov.model.CompStatus;
import gov.model.Complaints;
import gov.model.GovtConsumer;
import gov.model.Login;
import gov.model.MyComplaints;

public class ConsumerDao implements IConsumerDao {
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(GovtConsumer consumer) {
		 String sql="insert into GovtConsumer values(?,?,?,?,?,?,?,?,?)";
		  jdbcTemplate.update(sql, new Object[]
		  {consumer.getConsumerId(),consumer.getName(),consumer.getPassword(),consumer.getEmailId(),consumer.
		  getContactNo(),consumer.getSuburb(),consumer.getCity(),consumer.
		  getAddress_String(),consumer.getPincode()});
	}
	
	public void complainRegister(Complaints consumer) {
		 String sql="insert into Complaint values(?,?,?,?,?,?,?,?)";
		  jdbcTemplate.update(sql, new Object[]
		  {consumer.getComplainId(),consumer.getConsumerId(),consumer.getConsumerName(),consumer.getComplain_Category()
		  ,consumer.getComplain_Heading(),consumer.getDescription(),consumer.getImage(),consumer.getAffected_Address()});
	}
	
	
	
	public GovtConsumer validate(Login consumer)
	{
		String sql="select * from GovtConsumer where Name='"+consumer.getName()+"'and Password='"+consumer.getPassword()+"'";
		
		List<GovtConsumer> con=jdbcTemplate.query(sql,new ConsumerMapper());
		return con.size() > 0 ? con.get(0) : null;
	}
	
	//public void status(CompStatus comp) {
	
		 /*String sql="insert into CompStatus(StatusId,ComplainId,Status) values(?,?,?)";
		  jdbcTemplate.update(sql, new Object[]
		  {comp.getStatusId(),comp.getComplainId(),comp.getStatus()});*/
		
		
	//}
	
	 public int[] status(final List<CompStatus> books) {

	        return this.jdbcTemplate.batchUpdate(
				"insert into books (name, price) values(?,?)",
				new BatchPreparedStatementSetter() {

					public void setValues(PreparedStatement ps, int i) throws SQLException {
						ps.setInt(1, books.get(i).getStatusId());
						ps.setInt(2, books.get(i).getComplainId());
						ps.setString(3, books.get(i).getStatus());
					}

					public int getBatchSize() {
						return books.size();
					}

				});
	    }

	public List<MyComplaints> showMyComplaints(MyComplaints mv){  
		String sql="select * from MyComplaints where ConsumerId='"+mv.getConsumerId()+"'and ConsumerName='"+mv.getConsumerName()+"'";
		
		List<MyComplaints> con=jdbcTemplate.query(sql,new MyComplaintsMapper());
		return con;
		
		  }  
	
	public String getEmail() {
	    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	    String sql = "SELECT Admin_Email FROM adminlog ORDER BY ComplainId DESC LIMIT 1";

	    String streetName = (String) jdbcTemplate.queryForObject(
	            sql, String.class);

	    return streetName;
	}
}

class MyComplaintsMapper implements RowMapper<MyComplaints>
{

	public MyComplaints mapRow(ResultSet rs, int a) throws SQLException {
		MyComplaints cons=new MyComplaints();
		
		cons.setConsumerName(rs.getString("ConsumerName"));
		cons.setComplain_Category(rs.getString("Complain_Category"));
		cons.setComplain_Heading(rs.getString("Complain_Heading"));
		cons.setDescription(rs.getString("Description"));
		cons.setImage(rs.getString("Image"));
		cons.setStatus(rs.getString("Status"));
		
		return cons;
	}
}
	

	
class ConsumerMapper implements RowMapper<GovtConsumer>
{

	public GovtConsumer mapRow(ResultSet rs, int a) throws SQLException {
		GovtConsumer cons=new GovtConsumer();
		cons.setConsumerId(rs.getInt("ConsumerId"));
		cons.setName(rs.getString("Name"));
		cons.setPassword(rs.getString("Password"));
		cons.setEmailId(rs.getString("EmailId"));;
		cons.setContactNo(rs.getString("ContactNo"));
		cons.setSuburb(rs.getString("Suburb"));
		cons.setCity(rs.getString("City"));
		cons.setAddress_String(rs.getString("Address_String"));
		cons.setPincode(rs.getString("Pincode"));
		return cons;
	}
}

//class AreaMapper implements ResultSetExtractor<AreaComplaints>
//{
//
//	public AreaComplaints extractData(ResultSet rs) throws SQLException, DataAccessException {
//		AreaComplaints ac=new AreaComplaints();
//		ac.setAreaId(rs.getInt("AreaId"));
//		ac.setAreaName(rs.getString("AreaName"));
//		ac.setPincode(rs.getString("Pincode"));
//		ac.setSubAreaId(rs.getInt("SubAreaId"));
//		ac.setSubAreaName(rs.getString("SubAreaName"));
//		ac.setComplainId(rs.getInt("ComplainId"));
//		ac.setComplain_Category(rs.getString("Complain_Category"));
//		ac.setComplain_Heading(rs.getString("Complain_Heading"));
//		ac.setDescription(rs.getString("Description"));
//		return ac;
//	}
//	
//}


/*class Admin1Mapper implements RowMapper<Admin>
{

	public Admin mapRow(ResultSet rs, int a) throws SQLException {
		Admin cons=new Admin();
		cons.setAdmin_Name(rs.getString("Admin_Name"));
		cons.setAdmin_Password(rs.getString("Admin_Password"));
		cons.setAdmin_Email(rs.getString("Admin_Email"));;
		cons.setComplain_Category(rs.getString("Complain_Category"));
		
		return cons;
	}
}*/


/*public List<AreaComplaints> selection()
{
	String sql="select AreaName from AreaComplaints";
	  List<AreaComplaints> ls=jdbcTemplate.query(sql,AreaMapper());
	  return ls;
}*/
//public Admin selection(Admin consumer){  
//String sql="select * from Admin where Admin_Name='"+consumer.getAdmin_Name()+"'and Admin_Password='"+consumer.getAdmin_Password()+"'";
//	
//	List<Admin> con=jdbcTemplate.query(sql,new AdminMapper());
//	return con.size() > 0 ? con.get(0) : null;
//	  }  
