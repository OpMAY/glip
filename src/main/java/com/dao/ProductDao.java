package com.dao;

import com.mapper.ProductMapper;
import com.model.admin.exhibition.request.AdminExhibitionProductSelectRequest;
import com.model.admin.exhibition.response.AdminExhibitionSelectableProduct;
import com.model.admin.exhibition.response.ExhibitionRelatedProduct;
import com.model.admin.product.request.AdminProductActiveSwitchRequest;
import com.model.admin.product.request.AdminProductDeleteRequest;
import com.model.admin.product.request.ProductEditRequest;
import com.model.admin.product.request.ProductMakeRequest;
import com.model.admin.product.response.AdminProductDetailPage;
import com.model.admin.product.response.AdminProductListPage;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class ProductDao {
    @Autowired
    private SqlSession sqlSession;

    private ProductMapper getMapper() {
        return sqlSession.getMapper(ProductMapper.class);
    }

    public List<AdminExhibitionSelectableProduct> getProductListForExhibition(int exhibition_no) {
        return getMapper().getProductListForExhibition(exhibition_no);
    }

    public List<ExhibitionRelatedProduct> getSelectedProductInfoForExhibition(AdminExhibitionProductSelectRequest request) {
        return getMapper().getSelectedProductInfoForExhibition(request);
    }

    public List<AdminProductListPage> getAdminProductListPage() {
        return getMapper().getAdminProductListPage();
    }

    public void switchProductActiveStatus(AdminProductActiveSwitchRequest request) {
        getMapper().switchProductActiveStatus(request);
    }

    public AdminProductDetailPage getAdminProductDetailPage(int no) {
        return getMapper().getAdminProductDetailPage(no);
    }

    public void deleteProduct(AdminProductDeleteRequest request) {
        getMapper().deleteProduct(request);
    }

    public void editProduct(ProductEditRequest request) {
        getMapper().editProduct(request);
    }

    public void makeProduct(ProductMakeRequest request) {
        getMapper().makeProduct(request);
    }
}
