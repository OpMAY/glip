package com.dao;

import com.mapper.UserMapper;
import com.model.admin.user.response.AdminUserListPage;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class UserDao {
    @Autowired
    private SqlSession sqlSession;

    private UserMapper getMapper() {
        return sqlSession.getMapper(UserMapper.class);
    }

    public List<AdminUserListPage> getUserListPage(boolean is_suspended) {
        return getMapper().getUserListPage(is_suspended);
    }
}
