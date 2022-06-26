package com.service;

import com.dao.*;
import com.model.admin.exhibition.request.*;
import com.model.admin.exhibition.response.*;
import com.model.basic.exhibition.ExhibitionStatus;
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
public class ExhibitionService {
    @Autowired
    private ExhibitionDao exhibitionDao;

    @Autowired
    private ExhibitionScrapDao exhibitionScrapDao;

    @Autowired
    private ProductDao productDao;

    @Autowired
    private ProductScrapDao productScrapDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private RelatedDao relatedDao;


    @Transactional(readOnly = true)
    public List<AdminExhibitionListPage> getAdminExhibitionListPage(ExhibitionStatus status) {
        return exhibitionDao.getAdminExhibitionListPage(status);
    }

    @Transactional
    public ResponseEntity switchExhibitionActiveStatus(AdminExhibitionActiveSwitchRequest request) {
        try {
            exhibitionDao.switchExhibitionActiveStatus(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional(readOnly = true)
    public List<AdminExhibitionRequestListPage> getAdminExhibitionRequestListPage() {
        return exhibitionDao.getAdminExhibitionRequestListPage();
    }

    @Transactional(readOnly = true)
    public AdminExhibitionDetailPage getAdminExhibitionDetailPage(int no) {
        AdminExhibitionDetailPage detail = exhibitionDao.getAdminExhibitionDetailPage(no);
        detail.setRelated_products(relatedDao.getExhibitionRelatedProducts(no));
        return detail;
    }

    @Transactional
    public ResponseEntity deleteExhibition(AdminExhibitionDeleteRequest request) {
        try {
            exhibitionDao.deleteExhibition(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity rejectExhibition(AdminExhibitionRejectRequest request) {
        try {
            exhibitionDao.rejectExhibition(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity agreeExhibition(AdminExhibitionAgreeRequest request) {
        try {
            exhibitionDao.agreeExhibition(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional(readOnly = true)
    public ResponseEntity getProductListForExhibition(int exhibition_no) {
        try {
            Message message = new Message();
            List<AdminExhibitionSelectableProduct> product_list = productDao.getProductListForExhibition(exhibition_no);
            message.put("product_list", product_list);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK, ResMessage.TEST_SUCCESS, message.getHashMap()), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional(readOnly = true)
    public ResponseEntity getSelectedProductInfoForExhibition(AdminExhibitionProductSelectRequest request) {
        try {
            Message message = new Message();
            List<ExhibitionRelatedProduct> product_list = productDao.getSelectedProductInfoForExhibition(request);
            message.put("product_list", product_list);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK, ResMessage.TEST_SUCCESS, message.getHashMap()), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }

    @Transactional
    public ResponseEntity editExhibition(ExhibitionEditRequest request) {
        try {
            exhibitionDao.editExhibition(request);
            relatedDao.resetExhibitionRelatedProducts(request.getNo());
            relatedDao.updateExhibitionRelatedProducts(request);
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(DefaultRes.res(StatusCode.INTERNAL_SERVER_ERROR), HttpStatus.OK);
        }
    }
}
