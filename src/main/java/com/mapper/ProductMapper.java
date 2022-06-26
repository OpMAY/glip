package com.mapper;

import com.model.admin.exhibition.request.AdminExhibitionProductSelectRequest;
import com.model.admin.exhibition.response.AdminExhibitionSelectableProduct;
import com.model.admin.exhibition.response.ExhibitionRelatedProduct;
import com.model.admin.product.request.AdminProductActiveSwitchRequest;
import com.model.admin.product.request.AdminProductDeleteRequest;
import com.model.admin.product.request.ProductEditRequest;
import com.model.admin.product.request.ProductMakeRequest;
import com.model.admin.product.response.AdminProductDetailPage;
import com.model.admin.product.response.AdminProductListPage;

import java.util.List;

public interface ProductMapper {
    List<AdminExhibitionSelectableProduct> getProductListForExhibition(int exhibition_no);

    List<ExhibitionRelatedProduct> getSelectedProductInfoForExhibition(AdminExhibitionProductSelectRequest request);

    List<AdminProductListPage> getAdminProductListPage();

    void switchProductActiveStatus(AdminProductActiveSwitchRequest request);

    AdminProductDetailPage getAdminProductDetailPage(int no);

    void deleteProduct(AdminProductDeleteRequest request);

    void editProduct(ProductEditRequest request);

    void makeProduct(ProductMakeRequest request);
}
