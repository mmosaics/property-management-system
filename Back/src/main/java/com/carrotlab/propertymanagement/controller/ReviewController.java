package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.model.Review;
import com.carrotlab.propertymanagement.service.PostInformationService;
import com.carrotlab.propertymanagement.service.ReviewService;
import com.carrotlab.propertymanagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
public class ReviewController {

    private ReviewService reviewService;
    private PostInformationService postInformationService;

    private UserService userService;

    @Autowired
    public ReviewController(ReviewService reviewService, PostInformationService postInformationService, UserService userService) {
        this.reviewService = reviewService;
        this.postInformationService = postInformationService;
        this.userService = userService;
    }

    @GetMapping("/reviews/{postid}/postinfos")
    public List<Review> listPostReviews(@PathVariable("postid") int postId) {
        PostInformation postInformation = postInformationService.get(postId);
        return reviewService.listPostReview(postInformation);
    }

    @PostMapping("/reviews")
    public Review addReview(@RequestBody Review review, @RequestParam(value = "uid") int uid, @RequestParam(value = "postid") int postid) {

        review.setUser(userService.get(uid));
        review.setPostInformation(postInformationService.get(postid));
        review.setPostdate(new Date());
        reviewService.add(review);
        return review;
    }


}
