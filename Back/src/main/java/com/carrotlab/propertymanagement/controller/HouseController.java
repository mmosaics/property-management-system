package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.House;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.service.HouseService;
import com.carrotlab.propertymanagement.service.UserService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
public class HouseController {

    private HouseService houseService;
    private UserService userService;

    @Autowired
    public HouseController(HouseService houseService, UserService userService) {
        this.houseService = houseService;
        this.userService = userService;
    }

    //列出所有房产（分页）
    @GetMapping(value = "/houses")
    public NavigatePage<House> listByPage(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        start = start<0 ? 0: start;
        return houseService.list(start, size, 5);
    }

    //删除一个房产信息
    @DeleteMapping(value = "/houses/{id}")
    public String delete(@PathVariable("id") int id) {
        houseService.delete(id);
        return null;
    }

    //查询一个房产信息
    @GetMapping(value = "/houses/{id}")
    public House get(@PathVariable("id") int id) {
        return houseService.get(id);
    }

    //增加新房产信息
    @PostMapping(value = "/houses")
    public House add(@RequestBody House house) {
        houseService.add(house);
        return house;
    }

    //修改房屋信息
    @PutMapping(value = "/houses/{id}")
    public House update(@RequestBody House house) {
        houseService.update(house);
        return house;
    }

    //获取物业费缴纳信息
    @GetMapping(value = "/houses/managementinfo")
    public Map<String, Integer> getStatistics() {
        return houseService.getMangementFeeStatistic();
    }

    //获取入住情况信息
    @GetMapping(value = "/houses/checkedinfo")
    public Map<String, Integer> getCheckedInfo() {
        return houseService.getCheckedInfo();
    }

    //获取未入住房产信息
    @GetMapping(value = "/houses/unchecked")
    public NavigatePage<House> getUncheckedHouses(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        start = start < 0 ? 0:start;
        return houseService.getUncheckedHouse(start, size, 5);
    }

    //修改入住状态
    @PutMapping(value = "/houses/unchecked/{id}")
    public House checkedInHouse(@PathVariable("id") int id, @RequestParam(value = "uid") int uid) {

        House house = houseService.get(id);
        User user = userService.get(uid);

        userService.setHouseUsers(uid);

        house.setUser(user);
        house.setState("checked");
        house.setBillstate("unpaid");

        houseService.update(house);

        userService.removeHouseUsers(uid);

        return house;
    }

}
