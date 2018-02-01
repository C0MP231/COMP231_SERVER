package com.data.domain;

import java.util.Date;
import java.util.Objects;

public class Order {

    private long orderId;
    private Date orderDate;
    private Date moveDate;
    private Customer customer;
    private String cityOut;
    private String addressOut;
    private String cityIn;
    private String addressIn;
    private String contactName;
    private double hourlyRate;
    private double extras;
    private double totalCost;

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getMoveDate() {
        return moveDate;
    }

    public void setMoveDate(Date moveDate) {
        this.moveDate = moveDate;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getCityOut() {
        return cityOut;
    }

    public void setCityOut(String cityOut) {
        this.cityOut = cityOut;
    }

    public String getAddressOut() {
        return addressOut;
    }

    public void setAddressOut(String addressOut) {
        this.addressOut = addressOut;
    }

    public String getCityIn() {
        return cityIn;
    }

    public void setCityIn(String cityIn) {
        this.cityIn = cityIn;
    }

    public String getAddressIn() {
        return addressIn;
    }

    public void setAddressIn(String addressIn) {
        this.addressIn = addressIn;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public double getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    public double getExtras() {
        return extras;
    }

    public void setExtras(double extras) {
        this.extras = extras;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return orderId == order.orderId &&
                Double.compare(order.hourlyRate, hourlyRate) == 0 &&
                Double.compare(order.extras, extras) == 0 &&
                Double.compare(order.totalCost, totalCost) == 0 &&
                Objects.equals(orderDate, order.orderDate) &&
                Objects.equals(moveDate, order.moveDate) &&
                Objects.equals(customer, order.customer) &&
                Objects.equals(cityOut, order.cityOut) &&
                Objects.equals(addressOut, order.addressOut) &&
                Objects.equals(cityIn, order.cityIn) &&
                Objects.equals(addressIn, order.addressIn) &&
                Objects.equals(contactName, order.contactName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, orderDate, moveDate, customer, cityOut, addressOut, cityIn, addressIn, contactName, hourlyRate, extras, totalCost);
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderDate=" + orderDate +
                ", moveDate=" + moveDate +
                ", customer=" + customer +
                ", cityOut='" + cityOut + '\'' +
                ", addressOut='" + addressOut + '\'' +
                ", cityIn='" + cityIn + '\'' +
                ", addressIn='" + addressIn + '\'' +
                ", contactName='" + contactName + '\'' +
                ", hourlyRate=" + hourlyRate +
                ", extras=" + extras +
                ", totalCost=" + totalCost +
                '}';
    }
}
