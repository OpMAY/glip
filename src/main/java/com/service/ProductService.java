package com.service;

import com.dao.ProductDao;
import com.model.admin.product.request.AdminProductActiveSwitchRequest;
import com.model.admin.product.request.AdminProductDeleteRequest;
import com.model.admin.product.request.ProductEditRequest;
import com.model.admin.product.request.ProductMakeRequest;
import com.model.admin.product.response.AdminProductDetailPage;
import com.model.admin.product.response.AdminProductListPage;
import com.response.DefaultRes;
import com.response.Message;
import com.response.ResMessage;
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

    @Transactional(readOnly = true)
    public AdminProductDetailPage getAdminProductDetailPage(int no) {
        return productDao.getAdminProductDetailPage(no);
    }

    @Transactional
    public ResponseEntity deleteProduct(AdminProductDeleteRequest request) {
        try {
            productDao.deleteProduct(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity editProduct(ProductEditRequest request) {
        try {
            productDao.editProduct(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity makeProduct(ProductMakeRequest request) {
        try {
            Message message = new Message();
            productDao.makeProduct(request);
            message.put("no", request.getNo());
            return new ResponseEntity(DefaultRes.res(StatusCode.OK, ResMessage.TEST_SUCCESS, message.getHashMap()), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }
}
