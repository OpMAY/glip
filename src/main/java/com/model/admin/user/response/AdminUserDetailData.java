package com.model.admin.user.response;

import lombok.Data;

@Data
public class AdminUserDetailData {
    private String name;
    private boolean gender;
    private String phone;
    private String reg_date;
    private String final_login;
    private String nick_name;
    private String email;
    private String img;
}
