package com.carrotlab.propertymanagement.service.Impl;

import com.carrotlab.propertymanagement.dao.ReviewDAO;
import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.model.Review;
import com.carrotlab.propertymanagement.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService {

    private ReviewDAO reviewDAO;

    @Autowired
    public ReviewServiceImpl(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }

    @Override
    public List<Review> listPostReview(PostInformation postInformation) {
        List<Review> reviewList = reviewDAO.findByPostInformation(postInformation);
        for(Review review: reviewList) {
            setFormatDate(review);
        }
        return reviewList;
    }

    private void setFormatDate(Review review) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        review.setFormatDate(simpleDateFormat.format(review.getPostdate()));
    }

    @Override
    public void add(Review review) {
        reviewDAO.save(review);
    }
}
