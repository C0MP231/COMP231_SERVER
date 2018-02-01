package com.data.domain;

import java.util.Objects;

public class Customer {

    private long id;
    private String firsName;
    private String lastName;
    private String phone;
    private String email;
    private String address;
    private String city;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirsName() {
        return firsName;
    }

    public void setFirsName(String firsName) {
        this.firsName = firsName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer customer = (Customer) o;
        return id == customer.id &&
                Objects.equals(firsName, customer.firsName) &&
                Objects.equals(lastName, customer.lastName) &&
                Objects.equals(phone, customer.phone) &&
                Objects.equals(email, customer.email) &&
                Objects.equals(address, customer.address) &&
                Objects.equals(city, customer.city);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, firsName, lastName, phone, email, address, city);
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", firsName='" + firsName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
