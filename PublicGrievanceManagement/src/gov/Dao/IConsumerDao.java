package gov.Dao;

import gov.model.GovtConsumer;
import gov.model.Login;

public interface IConsumerDao {
void register(GovtConsumer consumer);
GovtConsumer validate(Login log);
}
