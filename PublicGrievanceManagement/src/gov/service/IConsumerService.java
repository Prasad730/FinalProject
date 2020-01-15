package gov.service;

import gov.model.GovtConsumer;
import gov.model.Login;

public interface IConsumerService {
void register(GovtConsumer consumer);
GovtConsumer login(Login log);
}
