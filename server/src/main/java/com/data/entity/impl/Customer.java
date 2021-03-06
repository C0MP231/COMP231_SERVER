package com.data.entity.impl;


import com.data.entity.abstr.CustomerPersistentEntityAbstraction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "CUSTOMERS")
public class Customer extends CustomerPersistentEntityAbstraction {

    @Id
    @GeneratedValue
    private Integer customerId;
    @NotNull
    @Column(name = "first_name")
    private String firsName;
    @NotNull
    @Column(name = "last_name")
    private String lastName;
    @NotNull
    @Column(name = "phone", columnDefinition = "CHAR")
    private String phone;
    @NotNull
    @Column(name="email")
    private String email;
    @NotNull
    @Column(name="address")
    private String address;
    @NotNull
    @Column(name = "city")
    private String city;

    @OneToMany
    @JoinColumn(name = "CUSTOMER_ID")
    private List<Order> orders = new ArrayList<>();

    public Customer() {}

    public Customer(String firstName, String lastName) {
        super(firstName, lastName);
    }

    @Override
    public Integer getId() {
        return customerId;
    }

    @Override
    public String getFirstName() {
        return firsName;
    }

    @Override
    public String getLastName() {
        return lastName;
    }

    @Override
    public String getPhone() {
        return phone;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public String getAddress() {
        return address;
    }

    @Override
    public String getCity() {
        return city;
    }



    @Override
    public void setId(Integer customerId) {
         this.customerId=customerId;
    }

    @Override
    public void setFirstName(String firstName) {
        this.firsName = firstName;
    }

    @Override
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Override
    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer that = (Customer) o;
        return Objects.equals(customerId, that.customerId) &&
                Objects.equals(firsName, that.firsName) &&
                Objects.equals(lastName, that.lastName) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(email, that.email) &&
                Objects.equals(address, that.address) &&
                Objects.equals(city, that.city);
    }

    @Override
    public int hashCode() {

        return Objects.hash(customerId, firsName, lastName, phone, email, address, city);
    }

    @Override
    public String toString() {
        return "CustomerPersistentEntityImpliment{" +
                "id=" + customerId +
                ", firsName='" + firsName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
