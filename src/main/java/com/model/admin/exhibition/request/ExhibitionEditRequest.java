package com.model.admin.exhibition.request;

import com.model.basic.exhibition.Author;
import lombok.Data;

import java.util.List;

@Data
public class ExhibitionEditRequest {
    private int no;
    private String title;
    private String subtitle;
    private String start_date;
    private String end_date;
    private String start_time;
    private String end_time;
    private String address;
    private String address_detail;
    private String homepage;
    private List<Author> author;
    private String category;
    private List<String> hashtag;
    private String details;
    private List<Integer> related_list;
    private String img;
    private double address_x;
    private double address_y;
}
