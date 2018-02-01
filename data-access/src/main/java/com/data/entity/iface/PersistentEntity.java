package com.data.entity.iface;

import java.io.Serializable;

public interface PersistentEntity extends Serializable {

    @Override
    int hashCode();

    @Override
    boolean equals(Object o);

    @Override
    String toString();

}
