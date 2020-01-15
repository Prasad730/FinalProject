package gov.service;

import org.springframework.beans.factory.annotation.Autowired;

import gov.Dao.ConsumerDao;
import gov.model.GovtConsumer;

public class ConsumerService implements IConsumerService{
	@Autowired
	public ConsumerDao consumerDao;
	public void register(GovtConsumer consumer) {
		
		consumerDao.register(consumer);
	}
 
}
