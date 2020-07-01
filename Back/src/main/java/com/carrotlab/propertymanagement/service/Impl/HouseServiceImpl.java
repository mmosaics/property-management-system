package com.carrotlab.propertymanagement.service.Impl;

import com.carrotlab.propertymanagement.dao.HouseDAO;
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

import java.util.HashMap;
import java.util.Map;

@Service
public class HouseServiceImpl implements HouseService {

    private HouseDAO houseDAO;

    @Autowired
    public HouseServiceImpl(HouseDAO houseDAO) {
        this.houseDAO = houseDAO;
    }

    @Override
    public NavigatePage<House> list(int start, int size, int navigatePageNum) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(start, size, sort);
        Page<House> page = houseDAO.findAll(pageable);

        return new NavigatePage<>(page, navigatePageNum);
    }

    @Override
    public NavigatePage<House> getUncheckedHouse(int start, int size, int navigatePageNum) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        Pageable pageable = new PageRequest(start, size, sort);
        Page<House> page = houseDAO.findAllByState("unchecked", pageable);

        return new NavigatePage<>(page, navigatePageNum);

    }

    @Override
    public void delete(int id) {
        houseDAO.delete(id);
    }

    @Override
    public House get(int id) {
        return houseDAO.findOne(id);
    }

    @Override
    public void update(House house) {
        houseDAO.save(house);
    }

    @Override
    public void add(House house) {
        houseDAO.save(house);
    }

    @Override
    public Map<String, Integer> getMangementFeeStatistic() {

        Map<String, Integer> map = new HashMap<>();
        map.put("unpaid", houseDAO.countByBillstate("unpaid"));
        map.put("paid", houseDAO.countByBillstate("paid"));

        return map;
    }

    @Override
    public Map<String, Integer> getCheckedInfo() {
        Map<String, Integer> map = new HashMap<>();
        map.put("unit1", houseDAO.countByStateAndUnit("checked", 1));
        map.put("unit2", houseDAO.countByStateAndUnit("checked", 2));
        map.put("unit3", houseDAO.countByStateAndUnit("checked", 3));
        map.put("unit4", houseDAO.countByStateAndUnit("checked", 4));
        map.put("unit5", houseDAO.countByStateAndUnit("checked", 5));
        map.put("unit6", houseDAO.countByStateAndUnit("checked", 6));
        return map;
    }

    @Override
    public void setUserHouses(User user) {
        user.setHouses(houseDAO.findByUser(user));
    }

}
