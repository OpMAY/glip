package com.service;

import com.dao.UserDao;
import com.model.admin.user.request.AdminUserSuspendRequest;
import com.model.admin.user.request.AdminUserUnSuspendRequest;
import com.model.admin.user.response.AdminUserDetailData;
import com.model.admin.user.response.AdminUserListPage;
import com.response.DefaultRes;
import com.response.Message;
import com.response.ResMessage;
import com.response.StatusCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

    @Transactional(readOnly = true)
    public ResponseEntity getAdminUserDetailData(int user_no) {
        try {
            Message message = new Message();
            AdminUserDetailData data = userDao.getUserAdminDetailData(user_no);
            message.put("user_data", data);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK, ResMessage.TEST_SUCCESS, message.getMap()), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity suspendUser(AdminUserSuspendRequest request) {
        try{
            userDao.suspendUser(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity unsuspendUser(AdminUserUnSuspendRequest request) {
        try{
            userDao.unsuspendUser(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }
}
