package gov.service;

import org.springframework.beans.factory.annotation.Autowired;


import gov.Dao.ConsumerDao;
import gov.model.GovtConsumer;
import gov.model.Login;

public class ConsumerService implements IConsumerService{
	@Autowired
	public ConsumerDao consumerDao;
	public void register(GovtConsumer consumer) {
		
		consumerDao.register(consumer);
	}
	public GovtConsumer login(Login login) {
		
		return consumerDao.validate(login);
	}
	
	
	
}
