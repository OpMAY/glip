package com.model.admin.product.response;

import lombok.Data;

@Data
public class AdminProductListPage {
    private int no;
    private String title;
    private String category;
    private int price;
    private int sales;
    private int views;
    private int scrap_count;
    private String reg_date;
    private boolean active_status;
}
