package com.mapper;

import com.model.admin.user.response.AdminUserListPage;

import java.util.List;

public interface UserMapper {
    List<AdminUserListPage> getUserListPage(boolean is_suspended);
}
