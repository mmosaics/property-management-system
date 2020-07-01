package com.carrotlab.propertymanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminPageController {

    @GetMapping(value = "/admin")
    public String admin() {
        return "redirect:index";
    }

    @GetMapping(value = "/index")
    public String index() {
        return "admin/index";
    }

    @GetMapping(value = "/admin_user_management")
    public String manageUsers() {
        return "admin/manageUser";
    }

    @GetMapping(value = "/admin_user_edit")
    public String editUser() {
        return "admin/editUser";
    }

    @GetMapping(value = "/admin_house_management")
    public String manageHouses() {
        return "admin/manageHouse";
    }

    @GetMapping(value = "/admin_postinfos")
    public String postInfoPage() {
        return "admin/postInfo";
    }

    @GetMapping(value = "/admin_postinfos_announcement_edit")
    public String editAnnouncement() {
        return "admin/editAnnouncement";
    }

    @GetMapping(value = "/admin_postinfos_userpost_edit")
    public String editUserPost() {
        return "admin/editUserPost";
    }

    @GetMapping(value = "/admin_staff_management")
    public String manageStaff() {
        return "admin/manageStaff";
    }

    @GetMapping(value = "/login")
    public String login() {
        return "admin/login";
    }

    @GetMapping(value = "/hello")
    public String hello() {
        return "admin/hello";
    }


}
