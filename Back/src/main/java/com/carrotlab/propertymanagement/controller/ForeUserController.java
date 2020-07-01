package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.service.PostInformationService;
import com.carrotlab.propertymanagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Map;

@RestController
public class ForeUserController {

    private PostInformationService postInformationService;
    private UserService userService;

    @Autowired
    public ForeUserController(PostInformationService postInformationService, UserService userService) {
        this.postInformationService = postInformationService;
        this.userService = userService;
    }

    @PostMapping("/post")
    public PostInformation post(@RequestBody PostInformation postInformation) {
        return null;
    }

    @PostMapping("/userlogin")
    public int login(@RequestBody User userParam, HttpSession session) {
        String username = userParam.getUsername();
        String password = userParam.getPassword();
        User user = userService.checkLogin(username, password);
        if(user != null) {
            session.setAttribute("user", user);
            return 0;
        } else {
            return 1;
        }
    }


}
