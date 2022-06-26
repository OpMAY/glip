package com.model.admin.exhibition.response;

import lombok.Data;

@Data
public class AdminExhibitionSelectableProduct {
    private int no;
    private String title;
    private String category;
    private int price;
    private int sales;
    private boolean product_related;
}
