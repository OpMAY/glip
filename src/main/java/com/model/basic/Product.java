package com.model.basic;

import lombok.Data;

import java.util.List;

@Data
public class Product {
    private int no;
    private String title;
    private String subtitle;
    private List<String> img;
    private String category;
    private int price;
    private int sales;
    private String link;
    private String details;
    private int views;
    private boolean active_status;
    private String reg_date;
}
