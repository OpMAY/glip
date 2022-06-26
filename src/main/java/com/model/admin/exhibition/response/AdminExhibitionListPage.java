package com.model.admin.exhibition.response;

import lombok.Data;

@Data
public class AdminExhibitionListPage {
    private int no;
    private String title;
    private String category;
    private String start_date;
    private String end_date;
    private String user_nickname;
    private String reg_date;
    private boolean active_status;
    private int scrap_count;
    private int views;
}
