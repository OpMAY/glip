package com.dao;

import com.mapper.AdminAdvertisementMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class AdminAdvertisementDao {
    @Autowired
    private SqlSession sqlSession;

    private AdminAdvertisementMapper getMapper() {
        return sqlSession.getMapper(AdminAdvertisementMapper.class);
    }
}
