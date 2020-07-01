package com.carrotlab.propertymanagement.dao;

import com.carrotlab.propertymanagement.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository<User, Integer> {

    Page<User> findByIdNot(int id, Pageable pageable);
    User findByUsernameAndPassword(String username, String password);

}
