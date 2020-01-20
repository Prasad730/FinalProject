package gov.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import gov.model.AreaComplaints;
import gov.model.Complaints;
import gov.model.GovtConsumer;
import gov.model.Login;

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
		 String sql="insert into Complaint values(?,?,?,?,?,?,?)";
		  jdbcTemplate.update(sql, new Object[]
		  {consumer.getComplainId(),consumer.getConsumerName(),consumer.getComplain_Category()
		  ,consumer.getComplain_Heading(),consumer.getDescription(),consumer.getImage(),consumer.getAffected_Address()});
	}
	
	
	
	public GovtConsumer validate(Login consumer)
	{
		String sql="select * from GovtConsumer where Name='"+consumer.getName()+"'and Password='"+consumer.getPassword()+"'";
		
		List<GovtConsumer> con=jdbcTemplate.query(sql,new ConsumerMapper());
		return con.size() > 0 ? con.get(0) : null;
	}

	/*public List<AreaComplaints> selection()
	{
		String sql="select AreaName from AreaComplaints";
		  List<AreaComplaints> ls=jdbcTemplate.query(sql,AreaMapper());
		  return ls;
	}*/
	public List<AreaComplaints> selection(){  
		 return jdbcTemplate.query("select * from AreaComplaints",new ResultSetExtractor<List<AreaComplaints>>(){  
		      
		     public List<AreaComplaints> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<AreaComplaints> list=new ArrayList<AreaComplaints>();  
		        while(rs.next()){  
		        	AreaComplaints ac=new AreaComplaints();  
		        	//ac.setAreaId(rs.getInt(0));
		    		ac.setAreaName(rs.getString("AreaName"));
//		    		ac.setPincode(rs.getString("Pincode"));
//		    		ac.setSubAreaId(rs.getInt("SubAreaId"));
//		    		ac.setSubAreaName(rs.getString("SubAreaName"));
//		    		ac.setComplainId(rs.getInt("ComplainId"));
//		    		ac.setComplain_Category(rs.getString("Complain_Category"));
//		    		ac.setComplain_Heading(rs.getString("Complain_Heading"));
//		    		ac.setDescription(rs.getString("Description"));
		    		 
		        list.add(ac);  
		        }  
		        return list;  
		        }  
		    });  
		  }  
}
class ConsumerMapper implements RowMapper<GovtConsumer>
{

	public GovtConsumer mapRow(ResultSet rs, int a) throws SQLException {
		GovtConsumer cons=new GovtConsumer();
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
