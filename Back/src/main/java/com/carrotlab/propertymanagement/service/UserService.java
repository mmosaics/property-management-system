package com.carrotlab.propertymanagement.service;


import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    List<User> list();

    NavigatePage<User> list(int start, int size, int navigatePageNum);

    void delete(int id);

    User get(int id);

    void update(User user);

    void add(User user);

    void removeHouseUsers(int id);

    void setHouseUsers(int id);

    User checkLogin(String username, String password);

}
