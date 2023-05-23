package com.model.admin.product.request;

import lombok.Data;

import java.util.List;

@Data
public class ProductEditRequest {
    private int no;
    private String title;
    private String subtitle;
    private String category;
    private int price;
    private int sales;
    private String link;
    private String details;
    private List<String> img;
}
