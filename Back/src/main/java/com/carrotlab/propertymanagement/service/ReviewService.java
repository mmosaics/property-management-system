package com.carrotlab.propertymanagement.service;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.model.Review;
import com.carrotlab.propertymanagement.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReviewService {

    List<Review> listPostReview(PostInformation postInformation);

    void add(Review review);

}
