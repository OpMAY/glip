package com.model.basic.admin.category;

import lombok.Data;

import java.util.List;

@Data
public class AdminCategory {
    private int no;
    private List<ExhibitionCategory> exhibition_category;
    private List<ProductCategory> product_category;
    private List<String> recommend_hashtag;
}
