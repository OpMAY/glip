package com.dao;

import com.mapper.ProductScrapMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class ProductScrapDao {
    @Autowired
    private SqlSession sqlSession;

    private ProductScrapMapper getMapper() {
        return sqlSession.getMapper(ProductScrapMapper.class);
    }
}
