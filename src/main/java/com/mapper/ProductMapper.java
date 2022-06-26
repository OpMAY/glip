package com.mapper;

import com.model.admin.exhibition.request.AdminExhibitionProductSelectRequest;
import com.model.admin.exhibition.response.AdminExhibitionSelectableProduct;
import com.model.admin.exhibition.response.ExhibitionRelatedProduct;

import java.util.List;

public interface ProductMapper {
    List<AdminExhibitionSelectableProduct> getProductListForExhibition(int exhibition_no);

    List<ExhibitionRelatedProduct> getSelectedProductInfoForExhibition(AdminExhibitionProductSelectRequest request);
}
