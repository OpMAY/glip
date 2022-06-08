package com.dao;

import com.mapper.AdminRecommendMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class AdminRecommendDao {
    @Autowired
    private SqlSession sqlSession;

    private AdminRecommendMapper getMapper() {
        return sqlSession.getMapper(AdminRecommendMapper.class);
    }
}
