package com.carrotlab.propertymanagement.service.Impl;

import com.carrotlab.propertymanagement.dao.HouseDAO;
import com.carrotlab.propertymanagement.dao.UserDAO;
import com.carrotlab.propertymanagement.model.House;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.service.HouseService;
import com.carrotlab.propertymanagement.service.UserService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private UserDAO userDAO;
    private HouseService houseService;

    @Autowired
    public UserServiceImpl(UserDAO userDAO, HouseService houseService) {
        this.userDAO = userDAO;
        this.houseService = houseService;
    }

    public List<User> list() {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        return userDAO.findAll(sort);
    }

    public NavigatePage<User> list(int start, int size, int navigatePageNum) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(start, size, sort);
        Page<User> page = userDAO.findByIdNot(1000, pageable);

        return new NavigatePage<>(page, navigatePageNum);

    }

    public void delete(int id) {
        setUserHouses(id);
        User user = userDAO.findOne(id);
        List<House> houses = user.getHouses();
        for(House house: houses) {
            house.setState("unchecked");
            house.setBillstate("unchecked");
            house.setUser(null);
            houseService.update(house);
        }
        userDAO.delete(id);
    }

    public User get(int id) {
        User user = userDAO.findOne(id);
        setUserHouses(id);
        removeHouseUsers(id);
        return user;
    }


    public void update(User user) {
        userDAO.save(user);
    }

    public void add(User user) {
        userDAO.save(user);
    }

    private void setUserHouses(int id) {
        User user = userDAO.findOne(id);
        houseService.setUserHouses(user);
    }

    public void removeHouseUsers(int id) {
        User user = userDAO.findOne(id);
        for(House house: user.getHouses()) {
            house.setUser(null);
        }
    }

    public void setHouseUsers(int id) {
        User user = userDAO.findOne(id);
        for(House house: user.getHouses()) {
            house.setUser(user);
        }
    }

    @Override
    public User checkLogin(String username, String password) {
        return userDAO.findByUsernameAndPassword(username, password);
    }
}
