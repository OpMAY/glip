package com.model.admin.exhibition.response;

import com.model.basic.exhibition.RegisterStatus;
import lombok.Data;

@Data
public class AdminExhibitionRequestListPage {
    private int no;
    private String title;
    private String category;
    private String start_date;
    private String end_date;
    private String user_nickname;
    private String request_date;
    private RegisterStatus register_status;
}
