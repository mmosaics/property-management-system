package com.carrotlab.propertymanagement.dao;

import com.carrotlab.propertymanagement.model.Staff;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StaffDAO extends JpaRepository<Staff, Integer> {

}
