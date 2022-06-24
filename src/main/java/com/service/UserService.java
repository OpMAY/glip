package com.service;

import com.dao.UserDao;
import com.model.admin.user.response.AdminUserListPage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    @Transactional(readOnly = true)
    public List<AdminUserListPage> getUserListPage(boolean is_suspended) {
        return userDao.getUserListPage(is_suspended);
    }
}
