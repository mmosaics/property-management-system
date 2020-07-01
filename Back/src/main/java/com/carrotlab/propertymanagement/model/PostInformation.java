package com.carrotlab.propertymanagement.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "postinfo")
@JsonIgnoreProperties({ "handler","hibernateLazyInitializer" })
public class PostInformation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    private String type;
    private String headline;
    private String message;
    private Date date;

    @ManyToOne
    @JoinColumn(name = "uid")
    private User user;

    @Transient
    private String formateDate;

    //@Transient
    //private List<Review> reviews;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getFormateDate() {
        return formateDate;
    }

    public void setFormateDate(String formateDate) {
        this.formateDate = formateDate;
    }
}
