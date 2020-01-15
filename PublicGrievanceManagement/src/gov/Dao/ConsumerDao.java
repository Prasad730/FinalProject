package gov.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import gov.model.GovtConsumer;
import gov.model.Login;

public class ConsumerDao implements IConsumerDao {
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(GovtConsumer consumer) {
		 String sql="insert into GovtConsumer values(?,?,?,?,?,?,?,?)";
		  jdbcTemplate.update(sql, new Object[]
		  {consumer.getName(),consumer.getPassword(),consumer.getEmailId(),consumer.
		  getContactNo(),consumer.getSuburb(),consumer.getCity(),consumer.
		  getAddress_String(),consumer.getPincode()});
	}
	public GovtConsumer validate(Login consumer)
	{
		String sql="select * from GovtConsumer where Name='"+consumer.getName()+"'and Password='"+consumer.getPassword()+"'";
		
		List<GovtConsumer> con=jdbcTemplate.query(sql,new ConsumerMapper());
		return con.size() > 0 ? con.get(0) : null;
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
