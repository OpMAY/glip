package com.dao;

import com.mapper.ExhibitionScrapMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class ExhibitionScrapDao {
    @Autowired
    private SqlSession sqlSession;

    private ExhibitionScrapMapper getMapper() {
        return sqlSession.getMapper(ExhibitionScrapMapper.class);
    }
}
