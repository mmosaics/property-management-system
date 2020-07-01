package com.carrotlab.propertymanagement.service;

import com.carrotlab.propertymanagement.model.Staff;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.stereotype.Service;

@Service
public interface StaffService {

    NavigatePage<Staff> list(int start, int size, int navigatePageNum);

    Staff get(int id);

    void update(Staff staff);

    void add(Staff staff);

    void delete(int id);

}
