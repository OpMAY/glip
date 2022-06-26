package com.service;

import com.dao.ProductDao;
import com.model.admin.product.request.AdminProductActiveSwitchRequest;
import com.model.admin.product.response.AdminProductDetailPage;
import com.model.admin.product.response.AdminProductListPage;
import com.response.DefaultRes;
import com.response.StatusCode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    @Transactional(readOnly = true)
    public List<AdminProductListPage> getAdminProductListPage() {
        return productDao.getAdminProductListPage();
    }

    @Transactional
    public ResponseEntity switchProductActiveStatus(AdminProductActiveSwitchRequest request) {
        try {
            productDao.switchProductActiveStatus(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    public AdminProductDetailPage getAdminProductDetailPage(int no) {
        return productDao.getAdminProductDetailPage(no);
    }
}
