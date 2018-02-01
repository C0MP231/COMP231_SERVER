package com.data.entity.iface;

public interface BillPersistentEntity extends PersistentEntity{

    Long getId();
    CustomerPersistentEntity getCustomer();
    OrderPersistentEntity getOrder();
    double getHourlyFree();
    double  getTotalHours();
    double getHST();
    double getTotalAmount();

    void setId(Long id);
    void setCustomer(CustomerPersistentEntity customer);
    void setOrder(OrderPersistentEntity order);
    void setHourlyFree(double hourlyFree);
    void setTotalHours(double totalHours);
    void setHST(double hst);
    void setTotalAmount(double totalAmount);

}
