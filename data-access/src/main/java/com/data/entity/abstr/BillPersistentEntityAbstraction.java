package com.data.entity.abstr;

import com.data.entity.iface.BillPersistentEntity;
import com.data.entity.iface.CustomerPersistentEntity;
import com.data.entity.iface.OrderPersistentEntity;

public abstract class BillPersistentEntityAbstraction extends PersistentEntityAbstraction implements BillPersistentEntity {
    public BillPersistentEntityAbstraction(CustomerPersistentEntity customer, OrderPersistentEntity order) {
        setCustomer(customer);
        setOrder(order);
    }
}
