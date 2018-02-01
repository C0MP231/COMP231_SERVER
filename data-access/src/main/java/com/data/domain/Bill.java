package com.data.domain;

import java.util.Objects;

public class Bill {

    private long id;
    private Customer customer;
    private double hourlyFree;
    private double totalHours;
    private double hst;
    private double totalAmount;

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public double getHourlyFree() {
        return hourlyFree;
    }

    public void setHourlyFree(double hourlyFree) {
        this.hourlyFree = hourlyFree;
    }

    public double getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(double totalHours) {
        this.totalHours = totalHours;
    }

    public double getHst() {
        return hst;
    }

    public void setHst(double hst) {
        this.hst = hst;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bill bill = (Bill) o;
        return id == bill.id &&
                Double.compare(bill.hourlyFree, hourlyFree) == 0 &&
                Double.compare(bill.totalHours, totalHours) == 0 &&
                Double.compare(bill.hst, hst) == 0 &&
                Double.compare(bill.totalAmount, totalAmount) == 0 &&
                Objects.equals(customer, bill.customer);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, customer, hourlyFree, totalHours, hst, totalAmount);
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", customer=" + customer +
                ", hourlyFree=" + hourlyFree +
                ", totalHours=" + totalHours +
                ", hst=" + hst +
                ", totalAmount=" + totalAmount +
                '}';
    }
}
