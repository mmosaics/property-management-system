package com.carrotlab.propertymanagement.service;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public interface PostInformationService {

    //用户发布信息
    NavigatePage<PostInformation> list(int start, int size, int navigatePageNum);

    PostInformation get(int id);

    void add(PostInformation postInformation);

    void delete(int id);

    void update(PostInformation postInformation);

    Map<String, Integer> statisticsData();

    Map<String, String> latestPost();

    //发布公告信息
    NavigatePage<PostInformation> listAnnouncement(int start, int size, int navigatePageNum);



}
