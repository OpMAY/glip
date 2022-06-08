package com.dao;

import com.mapper.ExhibitionMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class ExhibitionDao {
    @Autowired
    private SqlSession sqlSession;

    private ExhibitionMapper getMapper() {
        return sqlSession.getMapper(ExhibitionMapper.class);
    }
}
