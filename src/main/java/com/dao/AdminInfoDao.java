package com.dao;

import com.mapper.AdminInfoMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class AdminInfoDao {
    @Autowired
    private SqlSession sqlSession;

    private AdminInfoMapper getMapper() {
        return sqlSession.getMapper(AdminInfoMapper.class);
    }
}
