package com.mapper;

import com.model.admin.exhibition.request.ExhibitionEditRequest;
import com.model.admin.exhibition.response.ExhibitionRelatedProduct;

import java.util.List;

public interface RelatedMapper {
    List<ExhibitionRelatedProduct> getExhibitionRelatedProducts(int exhibition_no);

    void updateExhibitionRelatedProducts(ExhibitionEditRequest request);

    void resetExhibitionRelatedProducts(int no);
}
