package com.model.basic.exhibition;

import lombok.Data;

@Data
public class Exhibition {
    private int no;
    private String title;
    private String subtitle;
    private String img;
    private ExhibitionCategory category;
    private String hashtag;
    private String address;
    private String address_details;
    private String start_date;
    private String end_date;
    private int start_time;
    private int end_time;
//    private Object author;
    private String homepage;
    private String details;
    private String reject_details;
    private int views;
    private boolean active_status;
    private boolean exhibition_status;
    private boolean register_status;
    private String reg_date;
    private String request_date;
    private int user_no;
}
