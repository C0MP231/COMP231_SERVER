package com.data.entity.iface;

import com.data.entity.impl.Customer;

import java.sql.Date;

public interface OrderPersistentEntity extends PersistentEntity{

    Integer getId();
    CustomerPersistentEntity getCustomer();
    Date getOrderDate();
    Date getMoveDate();
    String getCityOut();
    String getAddressOut();
    String getCityIn();
    String getAddressIn();
    String getContactName();
    double getHourlyRate();
    double getExtras();
    double getTotalCost();

    void setId(Integer id);
    void setCustomer(Customer customer);
    void setOrderDate(Date orderDate);
    void setMoveDate(Date moveDate);
    void setCityOut(String cityOut);
    void setAddressOut(String addressOut);
    void setCityIn(String cityIn);
    void setAddressIn(String addressIn);
    void setContactName(String contactName);
    void setHourlyRate(double hourlyRate);
    void setExtras(double extras);
    void setTotalCost(double totalCost);

}
