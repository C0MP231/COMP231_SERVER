package com.data.repository;

import com.data.entity.impl.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Order,Long> {
}
