package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.Staff;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.service.StaffService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class StaffController {

    private StaffService staffService;

    @Autowired
    public StaffController(StaffService staffService) {
        this.staffService = staffService;
    }

    @GetMapping(value = "/staff")
    public NavigatePage<Staff> listStaff(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        start = start<0 ? 0: start;
        return staffService.list(start, size, 5);
    }

    //删除一个员工
    @DeleteMapping(value = "/staff/{id}")
    public String delete(@PathVariable("id") int id) {
        staffService.delete(id);
        return null;
    }

    //增加一个员工
    @PostMapping(value = "/staff")
    public Staff add(@RequestBody Staff staff) {
        staffService.add(staff);
        return staff;
    }

    //提交修改
    @PutMapping(value = "/staff/{id}")
    public Staff update(@RequestBody Staff staff) {
        staffService.update(staff);
        return staff;
    }

    //查询一个业主，主要用于修改业主的信息
    @GetMapping(value = "/staff/{id}")
    public Staff get(@PathVariable("id") int id) {
        return staffService.get(id);
    }

}
