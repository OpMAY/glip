package com.mapper;

import com.model.admin.user.request.AdminUserSuspendRequest;
import com.model.admin.user.request.AdminUserUnSuspendRequest;
import com.model.admin.user.response.AdminUserDetailData;
import com.model.admin.user.response.AdminUserListPage;

import java.util.List;

public interface UserMapper {
    List<AdminUserListPage> getUserListPage(boolean is_suspended);

    AdminUserDetailData getUserAdminDetailData(int user_no);

    void suspendUser(AdminUserSuspendRequest request);

    void unsuspendUser(AdminUserUnSuspendRequest request);
}
