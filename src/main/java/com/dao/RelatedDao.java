package com.dao;

import com.mapper.RelatedMapper;
import com.model.admin.exhibition.request.ExhibitionEditRequest;
import com.model.admin.exhibition.response.ExhibitionRelatedProduct;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class RelatedDao {
    @Autowired
    private SqlSession sqlSession;

    private RelatedMapper getMapper() {
        return sqlSession.getMapper(RelatedMapper.class);
    }

    public List<ExhibitionRelatedProduct> getExhibitionRelatedProducts(int no) {
        return getMapper().getExhibitionRelatedProducts(no);
    }

    public void updateExhibitionRelatedProducts(ExhibitionEditRequest request) {
        getMapper().updateExhibitionRelatedProducts(request);
    }

    public void resetExhibitionRelatedProducts(int no) {
        getMapper().resetExhibitionRelatedProducts(no);
    }
}
