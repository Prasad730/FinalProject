package gov.Dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import gov.model.GovtConsumer;

public class ConsumerDao implements IConsumerDao{
@Autowired
DataSource dataSource;
@Autowired
JdbcTemplate jdbcTemplate;
	public void register(GovtConsumer consumer) {
		//String sql="insert into GovtConsumer values('"+consumer.getName()'+consumer.getPassword(),?,?,?,?,?,?)";
		String sql="insert into GovtConsumer values(			    '"+consumer.getName()+"','"+consumer.getPassword()+"','"+consumer.getEmailId()+"','"+consumer.getContactNo()+"','"+consumer.getSuburb()+"','"+consumer.getCity()+"','"+consumer.getAddress_String()+"','"+consumer.getPincode()+"')";  
	jdbcTemplate.update(sql);
	/*jdbcTemplate.update(sql, new Object[] {consumer.getName(),consumer.getPassword(),consumer.getEmailId(),consumer.getContactNo(),consumer.getSuburb(),consumer.getCity(),consumer.getAddress_String(),consumer.getPincode()});*/
		
	}

}
