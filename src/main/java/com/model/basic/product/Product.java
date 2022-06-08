package com.model.basic.product;

import lombok.Data;

@Data
public class Product {
    private int no;
    private String title;
    private String subtitle;
    private String img;
    private ProductCategory category;
    private int price;
    private int sales;
    private String link;
    private String details;
    private int views;
    private boolean active_status;
    private String reg_date;
}
