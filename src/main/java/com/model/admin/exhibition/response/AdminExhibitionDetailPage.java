package com.model.admin.exhibition.response;

import com.model.basic.exhibition.Author;
import com.model.basic.exhibition.RegisterStatus;
import lombok.Data;

import java.util.List;

@Data
public class AdminExhibitionDetailPage {
    private int no;
    private String title;
    private String subtitle;
    private String img;
    private String category;
    private List<String> hashtag;
    private String address;
    private String address_details;
    private String start_date;
    private String end_date;
    private String start_time;
    private String end_time;
    private List<Author> author;
    private String homepage;
    private String details;
    private double address_x;
    private double address_y;
    private boolean active_status;
    private RegisterStatus register_status;
    private List<ExhibitionRelatedProduct> related_products;
}
