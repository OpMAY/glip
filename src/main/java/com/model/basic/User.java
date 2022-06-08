package com.model.basic;

import lombok.Data;

@Data
public class User {
    private int no;
    private String name;
    private String img;
    private String email;
    private String address;
    private String favorite;
    private int phone;
    private String reg_date;
    private boolean gender;
    private String final_login;
    private int suspend_status;
    private String suspend_date;
    private boolean marketing_alarm;
    private boolean kakao_alarm;
    private boolean service_alarm;
    private boolean scrap_alarm;
    private boolean exhibition_alarm;
}
