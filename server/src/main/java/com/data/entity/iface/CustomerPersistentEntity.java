package com.data.entity.iface;

public interface CustomerPersistentEntity {

    Integer getId();
    String getFirstName();
    String getLastName();
    String getPhone();
    String getEmail();
    String getAddress();
    String getCity();



    void setId(Integer id);

    void setFirstName(String firstName);
    void setLastName(String lastName);
    void setPhone(String phone);
    void setEmail(String email);
    void setAddress(String address);
    void setCity(String city);

}
