package com.data.entity.abstr;

public abstract class CustomerPersistentEntityAbstraction extends PersistentEntityAbstraction implements com.data.entity.iface.CustomerPersistentEntity {


    public CustomerPersistentEntityAbstraction(String firstName, String lastName) {
        setFirstName(firstName);
        setLastName(lastName);
    }


}
