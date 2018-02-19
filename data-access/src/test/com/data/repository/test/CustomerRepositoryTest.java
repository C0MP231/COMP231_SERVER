package com.data.repository.test;

import com.data.Application;
import com.data.entity.impl.Customer;
import com.data.entity.impl.Order;
import com.data.repository.OrderRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.data.repository.CustomerRepository;
import org.springframework.util.Assert;

import java.sql.Date;

@SpringBootTest(classes = {Application.class})
@RunWith(SpringJUnit4ClassRunner.class)
@TestPropertySource(locations="classpath:test.properties")
@DataJpaTest
public class CustomerRepositoryTest {

    @Autowired
    public CustomerRepository customerRepository;
    @Autowired
    public OrderRepository orderRepository;

    @Test
    public void testSave(){
        Customer customer = createTestCustomer();
        Customer saved = customerRepository.save(customer);
        Assert.notNull(saved, "Save Customer failed.");
    }

    @Test
    public void testRead() {
        Customer customer = createTestCustomer();
        Customer saved = customerRepository.save(customer);
        Customer found = customerRepository.findOne(saved.getId());
        Assert.notNull(found,"Read customer failed");
    }


    @Test
    public void createTestOrder(){
        Customer customer = createTestCustomer();
        Order order = new Order(customer);
        order.setAddressIn("TestCity");
        order.setAddressOut("00-et00");
        order.setCityIn("test@mail.com");
        order.setCityOut("TestAddress");
        order.setOrderDate(new Date(2018,7,17));
        Order saved = orderRepository.save(order);
        Assert.notNull(saved, "Save Customer failed.");
    }

    private Customer createTestCustomer(){
        Customer customer = new Customer("TestFirstName", "TestLastName");
        customer.setCity("TestCity");
        customer.setPhone("00-00");
        customer.setEmail("test@mail.com");
        customer.setAddress("TestAddress");
        return customer;
    }

}
