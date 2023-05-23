package com.model.admin.user.request;

import lombok.Data;

@Data
public class AdminUserSuspendRequest {
    private int user_no;
    private int suspend_days;
}
