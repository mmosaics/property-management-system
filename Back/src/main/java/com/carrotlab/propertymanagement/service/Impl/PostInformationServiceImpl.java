package com.carrotlab.propertymanagement.service.Impl;

import com.carrotlab.propertymanagement.dao.PostInformationDAO;
import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.service.PostInformationService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PostInformationServiceImpl implements PostInformationService {

    private PostInformationDAO postInformationDAO;

    @Autowired
    public PostInformationServiceImpl(PostInformationDAO postInformationDAO) {
        this.postInformationDAO = postInformationDAO;
    }

    @Override
    public NavigatePage<PostInformation> list(int start, int size, int navigatePageNum) {

        Sort sort = new Sort(Sort.Direction.DESC, "date");
        Pageable pageable = new PageRequest(start, size, sort);
        Page<PostInformation> page = postInformationDAO.findAllByTypeNot("announcement",pageable);
        NavigatePage<PostInformation> postInformationNavigatePage = new NavigatePage<>(page, navigatePageNum);

        formatDate(postInformationNavigatePage);

        return postInformationNavigatePage;

    }

    @Override
    public PostInformation get(int id) {
        PostInformation postInformation = postInformationDAO.findOne(id);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        postInformation.setFormateDate(simpleDateFormat.format(postInformation.getDate()));
        return postInformation;
    }

    @Override
    public void add(PostInformation postInformation) {
        postInformationDAO.save(postInformation);
    }

    @Override
    public void delete(int id) {
        postInformationDAO.delete(id);
    }

    @Override
    public void update(PostInformation postInformation) {
        postInformationDAO.save(postInformation);
    }

    @Override
    public Map<String, Integer> statisticsData() {

        Map<String, Integer> map = new HashMap<>();
        map.put("help", postInformationDAO.countAllByType("help"));
        map.put("ask", postInformationDAO.countAllByType("ask"));
        map.put("trade", postInformationDAO.countAllByType("trade"));
        map.put("advice", postInformationDAO.countAllByType("advice"));

        return map;

    }

    @Override
    public Map<String, String> latestPost() {
        Map<String, String> map = new HashMap<>();
        Sort sort = new Sort(Sort.Direction.DESC, "date");
        Pageable pageable = new PageRequest(0,1, sort);

        PostInformation helpPost = postInformationDAO.findAllByType("help", pageable).getContent().get(0);
        PostInformation askPost = postInformationDAO.findAllByType("ask", pageable).getContent().get(0);
        PostInformation tradePost = postInformationDAO.findAllByType("trade", pageable).getContent().get(0);
        PostInformation advicePost = postInformationDAO.findAllByType("advice",pageable).getContent().get(0);

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");

        map.put("help", simpleDateFormat.format(helpPost.getDate()));
        map.put("ask", simpleDateFormat.format(askPost.getDate()));
        map.put("trade", simpleDateFormat.format(tradePost.getDate()));
        map.put("advice", simpleDateFormat.format(advicePost.getDate()));


        return map;

    }

    @Override
    public NavigatePage<PostInformation> listAnnouncement(int start, int size, int navigatePageNum) {
        Sort sort = new Sort(Sort.Direction.DESC, "date");
        Pageable pageable = new PageRequest(start,size, sort);
        Page<PostInformation> page = postInformationDAO.findAllByType("announcement", pageable);
        NavigatePage<PostInformation> announcements = new NavigatePage<>(page, navigatePageNum);

        formatDate(announcements);

        return announcements;


    }

    private void formatDate(NavigatePage<PostInformation> navigatePage) {
        List<PostInformation> postInformations = navigatePage.getContent();

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        for(PostInformation p: postInformations) {
            String formatDate = simpleDateFormat.format(p.getDate());
            p.setFormateDate(formatDate);
        }

        navigatePage.setContent(postInformations);

    }


}
