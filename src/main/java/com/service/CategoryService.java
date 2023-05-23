package com.service;

import com.dao.AdminCategoryDao;
import com.model.basic.admin.category.AdminCategory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
public class CategoryService {

    @Autowired
    private AdminCategoryDao categoryDao;


    @Transactional(readOnly = true)
    public AdminCategory getCategoryManagePage() {
        AdminCategory category = categoryDao.getCategoryManagePage();
        log.info("category : " + category);
        return category;
    }
}
