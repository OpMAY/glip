package com.dao;

import com.mapper.ExhibitionMapper;
import com.model.admin.exhibition.request.*;
import com.model.admin.exhibition.response.AdminExhibitionDetailPage;
import com.model.admin.exhibition.response.AdminExhibitionListPage;
import com.model.admin.exhibition.response.AdminExhibitionRequestListPage;
import com.model.basic.exhibition.ExhibitionStatus;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@Repository
public class ExhibitionDao {
    @Autowired
    private SqlSession sqlSession;

    private ExhibitionMapper getMapper() {
        return sqlSession.getMapper(ExhibitionMapper.class);
    }

    public List<AdminExhibitionListPage> getAdminExhibitionListPage(ExhibitionStatus status) {
        return getMapper().getAdminExhibitionListPage(status);
    }

    public void switchExhibitionActiveStatus(AdminExhibitionActiveSwitchRequest request) {
        getMapper().switchExhibitionActiveStatus(request);
    }

    public List<AdminExhibitionRequestListPage> getAdminExhibitionRequestListPage() {
        return getMapper().getAdminExhibitionRequestListPage();
    }

    public AdminExhibitionDetailPage getAdminExhibitionDetailPage(int no) {
        return getMapper().getAdminExhibitionDetailPage(no);
    }

    public void deleteExhibition(AdminExhibitionDeleteRequest request) {
        getMapper().deleteExhibition(request);
    }

    public void rejectExhibition(AdminExhibitionRejectRequest request) {
        getMapper().rejectExhibition(request);
    }

    public void agreeExhibition(AdminExhibitionAgreeRequest request) {
        getMapper().agreeExhibition(request);
    }

    public void editExhibition(ExhibitionEditRequest request) {
        getMapper().editExhibition(request);
    }
}
