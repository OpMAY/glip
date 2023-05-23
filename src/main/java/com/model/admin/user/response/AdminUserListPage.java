package com.model.admin.user.response;

import lombok.Data;

@Data
public class AdminUserListPage {
    private int no;
    private String name;
    private String nick_name;
    private String email;
    private String phone;
    private String reg_date;
}
