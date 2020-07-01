package com.carrotlab.propertymanagement.dao;

import com.carrotlab.propertymanagement.model.PostInformation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface PostInformationDAO extends JpaRepository<PostInformation, Integer> {

    int countAllByType(String type);

    Page<PostInformation> findAllByType(String type, Pageable pageable);

    Page<PostInformation> findAllByTypeNot(String type, Pageable pageable);

}
