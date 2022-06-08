package com.dao;

import com.mapper.RecentMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class RecentDao {
    @Autowired
    private SqlSession sqlSession;

    private RecentMapper getMapper() {
        return sqlSession.getMapper(RecentMapper.class);
    }
}
