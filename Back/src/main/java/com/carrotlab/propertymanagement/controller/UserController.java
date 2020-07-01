package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.House;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.service.HouseService;
import com.carrotlab.propertymanagement.service.UserService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class UserController {

    private UserService userService;
    private HouseService houseService;

    @Autowired
    public UserController(UserService userService, HouseService houseService) {
        this.userService = userService;
        this.houseService = houseService;
    }

    /*
    //列出所有业主项
    @GetMapping(value = "/users")
    public List<User> list() {
        List<User> list = userService.list();
        return list;
    }
     */

    //列出所有业主项（分页）
    @GetMapping(value = "/users")
    public NavigatePage<User> listByPage(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        start = start<0 ? 0: start;
        return userService.list(start, size, 5);
    }

    //删除一个业主
    @DeleteMapping(value = "/users/{id}")
    public String delete(@PathVariable("id") int id) {
        userService.delete(id);
        return null;
    }

    //查询一个业主，主要用于修改业主的信息
    @GetMapping(value = "/users/{id}")
    public User get(@PathVariable("id") int id) {
        return userService.get(id);
    }

    //增加新的业主
    @PostMapping(value = "/users")
    public User add(@RequestBody User user) {
        userService.add(user);
        return user;
    }

    //提交修改
    @PutMapping(value = "/users/{id}")
    public User update(@RequestBody User user) {
        userService.update(user);
        return user;
    }

    //删除用户拥有房产信息
    @DeleteMapping(value = "/users/houses/{hid}")
    public String deleteUserHouse(@PathVariable("hid") int hid) {
        House house = houseService.get(hid);
        house.setState("unchecked");
        house.setBillstate("unchecked");
        house.setUser(null);
        houseService.update(house);
        return null;
    }



}
