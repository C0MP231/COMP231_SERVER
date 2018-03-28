package com.data.entity.abstr;

import com.data.entity.iface.OrderPersistentEntity;
import com.data.entity.impl.Customer;

public abstract class OrderPersistentEntityAbstraction extends PersistentEntityAbstraction implements OrderPersistentEntity{

    public OrderPersistentEntityAbstraction(Customer customer) {
        setCustomer(customer);
    }
}
