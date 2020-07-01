package com.carrotlab.propertymanagement.dao;

import com.carrotlab.propertymanagement.model.House;
import com.carrotlab.propertymanagement.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HouseDAO extends JpaRepository<House, Integer> {

    int countByBillstate(String billstate);
    int countByStateAndUnit(String state, int unit);
    List<House> findByUser(User user);
    Page<House> findAllByState(String state, Pageable pageable);

}
