package com.carrotlab.propertymanagement.dao;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.model.Review;
import com.carrotlab.propertymanagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewDAO extends JpaRepository<Review, Integer> {

    List<Review> findByPostInformation(PostInformation postInformation);


}
