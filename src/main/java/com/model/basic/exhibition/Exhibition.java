package com.model.basic.exhibition;

import lombok.Data;

import java.util.List;

@Data
public class Exhibition {
    private int no;
    private String title;
    private String subtitle;
    private List<String> img;
    private String category;
    private String hashtag;
    private String address;
    private String address_details;
    private Double address_x;
    private Double address_y;
    private String start_date;
    private String end_date;
    private String start_time;
    private String end_time;
    private List<Author> author;
    private String homepage;
    private String details;
    private String reject_details;
    private int views;
    private boolean active_status;
    private ExhibitionStatus exhibition_status;
    private RegisterStatus register_status;
    private String reg_date;
    private String request_date;
    private int user_no;
}
