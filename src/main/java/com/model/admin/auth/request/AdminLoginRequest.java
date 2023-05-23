package com.model.admin.auth.request;

import lombok.Data;

@Data
public class AdminLoginRequest {
    private String id;
    private String password;
}
