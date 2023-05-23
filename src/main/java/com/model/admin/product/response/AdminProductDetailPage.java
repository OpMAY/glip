package com.model.admin.product.response;

import lombok.Data;

import java.util.List;

@Data
public class AdminProductDetailPage {
    private int no;
    private String title;
    private List<String> img;
    private String category;
    private String subtitle;
    private int price;
    private int sales;
    private String link;
    private String details;
    private boolean active_status;
}
