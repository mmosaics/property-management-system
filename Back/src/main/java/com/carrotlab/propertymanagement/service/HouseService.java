package com.carrotlab.propertymanagement.service;

import com.carrotlab.propertymanagement.model.House;
import com.carrotlab.propertymanagement.model.User;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface HouseService {

    NavigatePage<House> list(int start, int size, int navigatePageNum);

    void delete(int id);

    House get(int id);

    void update(House house);

    void add(House house);

    Map<String, Integer> getMangementFeeStatistic();

    Map<String, Integer> getCheckedInfo();

    void setUserHouses(User user);

    NavigatePage<House> getUncheckedHouse(int start, int size, int navigatePageNum);


}
