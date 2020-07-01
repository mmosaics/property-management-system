package com.carrotlab.propertymanagement.controller;

import com.carrotlab.propertymanagement.model.PostInformation;
import com.carrotlab.propertymanagement.service.PostInformationService;
import com.carrotlab.propertymanagement.util.NavigatePage;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;

@RestController
public class PostInfoController {

    private PostInformationService postInformationService;

    @Autowired
    public PostInfoController(PostInformationService postInformationService) {
        this.postInformationService = postInformationService;
    }

    //获取一页的消息信息
    @GetMapping(value = "/postinfos/users")
    public NavigatePage<PostInformation> list(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        start = start < 0 ? 0: start;
        return postInformationService.list(start,size,5);
    }

    //获取统计数据
    @GetMapping(value = "/postinfos/users/statistics")
    public Map<String, Integer> statisticsData() {
        return postInformationService.statisticsData();
    }

    //获取最新时间
    @GetMapping(value = "/postinfos/users/latestposts")
    public Map<String, String> latestPosts() {
        return postInformationService.latestPost();
    }

    //获取一页的公告
    @GetMapping(value = "/postinfos/announcement")
    public NavigatePage<PostInformation> listAnnouncement(@RequestParam(value = "start", defaultValue = "0") int start, @RequestParam(value = "size", defaultValue = "10") int size) {
        return postInformationService.listAnnouncement(start, size, 5);
    }

    //删除一条用户发布的信息
    @DeleteMapping(value = "/postinfos/{id}")
    public String deleteUserPost(@PathVariable("id") int id) {
        postInformationService.delete(id);
        return null;
    }

    //获取id为id的公告
    @GetMapping(value = "/postinfos/announcement/{id}")
    public PostInformation getAnnounce(@PathVariable("id") int id) {
        return postInformationService.get(id);
    }

    //获取id为id的用户发布信息
    @GetMapping(value = "/postinfos/users/{id}")
    public PostInformation getUserPost(@PathVariable("id") int id) {
        return postInformationService.get(id);
    }


    //修改一条信息(公告）
    @PutMapping(value = "/postinfos/announcement/{id}")
    public PostInformation updatePost(@RequestBody PostInformation postInformation) {
        postInformation.setDate(new Date());
        postInformation.setUser(null);
        postInformationService.update(postInformation);
        return postInformation;

    }

    //增加一条公告
    @PostMapping(value = "/postinfos/announcements")
    public PostInformation addAnnounce(@RequestBody PostInformation postInformation ) {
        postInformation.setUser(null);
        postInformation.setDate(new Date());
        postInformationService.add(postInformation);
        return postInformation;
    }

}
