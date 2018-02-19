package com.data.entity.impl;

import com.data.entity.abstr.OrderPersistentEntityAbstraction;
import com.data.entity.iface.CustomerPersistentEntity;
import com.data.entity.iface.OrderPersistentEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;

@Entity
@Table(name = "ORDERS")
public class Order extends OrderPersistentEntityAbstraction{

    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne
    private Customer customer;

    @NotNull
    private Date orderDate;
    private Date moveDate;

    private String cityOut;

    private String addressOut;

    private String cityIn;

    private String addressIn;

    private String contactName;

    private double hourlyRate;

    private double extras;

    private double totalCost;


    public Order(Customer customer) {
        super(customer);
    }

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public CustomerPersistentEntity getCustomer() {
        return customer;
    }

    @Override
    public Date getOrderDate() {
        return orderDate;
    }

    @Override
    public Date getMoveDate() {
        return moveDate;
    }

    @Override
    public String getCityOut() {
        return cityOut;
    }

    @Override
    public String getAddressOut() {
        return addressOut;
    }

    @Override
    public String getCityIn() {
        return cityIn;
    }

    @Override
    public String getAddressIn() {
        return addressIn;
    }

    @Override
    public String getContactName() {
        return contactName;
    }

    @Override
    public double getHourlyRate() {
        return hourlyRate;
    }

    @Override
    public double getExtras() {
        return extras;
    }

    @Override
    public double getTotalCost() {
        return totalCost;
    }

    @Override
    public void setId(Long id) {
        this.id=id;
    }

    @Override
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public void setOrderDate(Date orderDate) {
        this.orderDate=orderDate;
    }

    @Override
    public void setMoveDate(Date moveDate) {
        this.moveDate=moveDate;
    }

    @Override
    public void setCityOut(String cityOut) {
        this.cityOut =cityOut;
    }

    @Override
    public void setAddressOut(String addressOut) {
        this.addressOut=addressOut;
    }

    @Override
    public void setCityIn(String cityIn) {
        this.cityIn=cityIn;
    }

    @Override
    public void setAddressIn(String addressIn) {
        this.addressIn=addressIn;
    }

    @Override
    public void setContactName(String contactName) {
            this.contactName=contactName;
    }

    @Override
    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate=hourlyRate;
    }

    @Override
    public void setExtras(double extras) {
        this.extras=extras;
    }

    @Override
    public void setTotalCost(double totalCost) {
        this.totalCost=totalCost;
    }


}
