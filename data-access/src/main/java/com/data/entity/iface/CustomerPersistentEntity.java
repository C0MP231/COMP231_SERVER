package com.data.entity.iface;

public interface CustomerPersistentEntity {

    Long getId();
    String getFirstName();
    String getLastName();
    String getPhone();
    String getEmail();
    String getAddress();
    String getCity();

    Long setId();
    void setFirstName(String firstName);
    void setLastName(String lastName);
    void setPhone(String phone);
    void setEmail(String email);
    void setAddress(String address);
    void setCity(String city);

}
