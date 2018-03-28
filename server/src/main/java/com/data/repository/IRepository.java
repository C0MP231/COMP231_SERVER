package com.data.repository;

import java.io.Serializable;

public interface IRepository<T, ID extends Serializable> {

    <S extends T> S save(S entity);

    T findOne(ID primaryKey);

    Iterable<T> findAll();

    Long count();

    void delete(T entity);

    boolean exists(ID primaryKey);

}
