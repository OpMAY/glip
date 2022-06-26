package com.model.admin.exhibition.request;

import lombok.Data;

@Data
public class AdminExhibitionRejectRequest {
    private int exhibition_no;
    private String reject_details;
}
