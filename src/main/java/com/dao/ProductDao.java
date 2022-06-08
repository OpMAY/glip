package com.dao;

import com.mapper.ProductMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class ProductDao {
    @Autowired
    private SqlSession sqlSession;

    private ProductMapper getMapper() {
        return sqlSession.getMapper(ProductMapper.class);
    }
}
