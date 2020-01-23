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

import gov.model.Admin;
import gov.model.AdminLog;

public class AdminDao {

	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Admin selection(Admin consumer){  
		String sql="select * from Admin where Admin_Name='"+consumer.getAdmin_Name()+"'and Admin_Password='"+consumer.getAdmin_Password()+"'";
		
		List<Admin> con=jdbcTemplate.query(sql,new AdminMapper());
		return con.size() > 0 ? con.get(0) : null;
		  }  
	
	/*public List<AdminLog> sellpected(Admin ad){  
		 return jdbcTemplate.query("select * from AdminLog where Admin_Name='"+ad.getAdmin_Name() +"'",new ResultSetExtractor<List<AdminLog>>(){  
		      
		     public List<AdminLog> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<AdminLog> list=new ArrayList<AdminLog>();  
		        while(rs.next()){  
		        	AdminLog ac=new AdminLog();  
		        	ac.setComplainId(rs.getInt("ComplainId"));
		    		ac.setConsumerName(rs.getString("ConsumerName"));
		    		ac.setComplain_Category(rs.getString("Complain_Category"));
		    		ac.setComplain_Heading(rs.getString("Complain_Heading"));
		    		ac.setDescription(rs.getString("Description"));
		    		ac.setAffected_Address(rs.getString("Affected_address"));
		    		ac.setImage(rs.getString("Image"));
		    		 
		        list.add(ac);  
		        }  
		        return list;  
		        }  
		    });  
		  }  */
	
	public List<AdminLog> selected(Admin consumer){  
		String sql="select * from AdminLog where Admin_Name='"+consumer.getAdmin_Name()+"'";
		
		List<AdminLog> con=jdbcTemplate.query(sql,new AdminLogMapper());
		return con;
		  }  
	
}

class AdminMapper implements RowMapper<Admin>
{

	public Admin mapRow(ResultSet rs, int a) throws SQLException {
		Admin cons=new Admin();
		
		cons.setAdmin_Name(rs.getString("Admin_Name"));
		cons.setAdmin_Password(rs.getString("Admin_Password"));
		cons.setAdmin_Email(rs.getString("Admin_Email"));;
		cons.setComplain_Category(rs.getString("Complain_Category"));
		
		return cons;
	}
}


class AdminLogMapper implements RowMapper<AdminLog>
{

	public AdminLog mapRow(ResultSet rs, int a) throws SQLException {
		AdminLog ac=new AdminLog();  
    	ac.setComplainId(rs.getInt("ComplainId"));
		ac.setConsumerName(rs.getString("ConsumerName"));
		ac.setComplain_Category(rs.getString("Complain_Category"));
		ac.setComplain_Heading(rs.getString("Complain_Heading"));
		ac.setDescription(rs.getString("Description"));
		ac.setAffected_Address(rs.getString("Affected_address"));
		ac.setImage(rs.getString("Image"));
		return ac;
	}
}