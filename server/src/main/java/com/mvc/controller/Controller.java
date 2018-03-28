package com.mvc.controller;

import com.data.entity.impl.Customer;
import com.data.repository.CustomerRepository;
import com.data.repository.OrderRepository;
import com.mvc.controller.request.CustomerCreateRequest;
import net.minidev.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class Controller {

    @Autowired
    public CustomerRepository customerRepository;
    @Autowired
    public OrderRepository orderRepository;

    @GetMapping(path = "/customers", produces= MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> getCustomers() {
        List<JSONObject> entities = new ArrayList<>();
        JSONObject entity = new JSONObject();

        for(Customer customer : customerRepository.findAll()) {
            entity.put("customer", customer);
        }

        entities.add(entity);

        return new ResponseEntity<>(entities, HttpStatus.OK);
    }

    @GetMapping(path = "/customer/{id}")
    public ResponseEntity<Object> getCustomer(@PathVariable Integer id) {
        JSONObject entity = new JSONObject();
        Customer customer = customerRepository.findOne(id);
        entity.put("customer", customer);
        return new ResponseEntity<>(entity, HttpStatus.OK);
    }

    @PostMapping(path = "/customer")
    public ResponseEntity<Object> createUpdateCustomer(@RequestBody CustomerCreateRequest request) {
        JSONObject entity = new JSONObject();
        Customer customer;
        if (request.getId() == null) {
            customer = new Customer();
            customer.setFirstName(request.getFirsName());
            customer.setLastName(request.getLastName());
            customer.setEmail(request.getEmail());
            customer.setPhone(request.getPhone());
            customer.setCity(request.getCity());
            customer.setAddress(request.getAddress());
            customerRepository.save(customer);
        } else {
            customer = customerRepository.findOne(request.getId());
            customer.setFirstName(request.getFirsName());
            customer.setLastName(request.getLastName());
            customer.setEmail(request.getEmail());
            customer.setPhone(request.getPhone());
            customer.setCity(request.getCity());
            customer.setAddress(request.getAddress());
            customerRepository.save(customer);
        }

        entity.put("customer", customer);
        return new ResponseEntity<>(customer, HttpStatus.OK);
    }
}
