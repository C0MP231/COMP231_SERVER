package com.data.entity.abstr;

import com.data.entity.iface.CustomerPersistentEntity;
import com.data.entity.iface.OrderPersistentEntity;

public abstract class OrderPersistentEntityAbstraction extends PersistentEntityAbstraction implements OrderPersistentEntity{

    public OrderPersistentEntityAbstraction(CustomerPersistentEntity customer) {
        setCustomer(customer);
    }
}
