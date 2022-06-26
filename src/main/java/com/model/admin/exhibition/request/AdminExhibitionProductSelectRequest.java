package com.model.admin.exhibition.request;

import lombok.Data;

import java.util.List;

@Data
public class AdminExhibitionProductSelectRequest {
    private List<Integer> product_list;
}
