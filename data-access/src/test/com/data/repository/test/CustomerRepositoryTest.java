package com.data.repository.test;

import com.data.Application;
import com.data.entity.impl.Customer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.data.repository.CustomerRepository;
import org.springframework.util.Assert;

@SpringBootTest(classes = {Application.class})
@RunWith(SpringJUnit4ClassRunner.class)
@TestPropertySource(locations="classpath:test.properties")
@DataJpaTest
public class CustomerRepositoryTest {

    @Autowired
    public CustomerRepository customerRepository;

    @Test
    public void testSave(){
        Customer customer = new Customer("TestFirstName", "TestLastName");
        customer.setCity("TestCity");
        customer.setPhone("00-00");
        customer.setEmail("test@mail.com");
        customer.setAddress("TestAddress");
        Customer saved = customerRepository.save(customer);
        Assert.notNull(saved, "Save Customer failed.");
    }
}
