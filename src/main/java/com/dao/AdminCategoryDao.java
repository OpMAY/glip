package com.dao;

import com.mapper.AdminAdvertisementMapper;
import com.mapper.AdminCategoryMapper;
import com.model.basic.admin.category.AdminCategory;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Slf4j
@Repository
public class AdminCategoryDao {
    @Autowired
    private SqlSession sqlSession;

    private AdminCategoryMapper getMapper() {
        return sqlSession.getMapper(AdminCategoryMapper.class);
    }

    public AdminCategory getCategoryManagePage() {
        return getMapper().getCategoryManagePage();
    }
}
