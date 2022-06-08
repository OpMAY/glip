package com.dao;

import com.mapper.RelatedMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class RelatedDao {
    @Autowired
    private SqlSession sqlSession;

    private RelatedMapper getMapper() {
        return sqlSession.getMapper(RelatedMapper.class);
    }
}
