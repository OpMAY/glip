package com.dao;

import com.mapper.AlarmMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class AlarmDao {
    @Autowired
    private SqlSession sqlSession;

    private AlarmMapper getMapper() {
        return sqlSession.getMapper(AlarmMapper.class);
    }
}
