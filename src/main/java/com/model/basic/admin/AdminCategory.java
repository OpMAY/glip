package com.model.basic.admin;

import lombok.Data;

import java.util.List;

@Data
public class AdminCategory {
    private int no;
    private List<String> exhibition_category;
    private List<String> product_category;
    private List<String> recommend_category;
}
