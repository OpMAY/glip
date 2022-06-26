package com.mapper;

import com.model.admin.exhibition.request.*;
import com.model.admin.exhibition.response.AdminExhibitionDetailPage;
import com.model.admin.exhibition.response.AdminExhibitionListPage;
import com.model.admin.exhibition.response.AdminExhibitionRequestListPage;
import com.model.basic.exhibition.ExhibitionStatus;

import java.util.List;

public interface ExhibitionMapper {
    List<AdminExhibitionListPage> getAdminExhibitionListPage(ExhibitionStatus status);

    void switchExhibitionActiveStatus(AdminExhibitionActiveSwitchRequest request);

    List<AdminExhibitionRequestListPage> getAdminExhibitionRequestListPage();

    AdminExhibitionDetailPage getAdminExhibitionDetailPage(int no);

    void deleteExhibition(AdminExhibitionDeleteRequest request);

    void rejectExhibition(AdminExhibitionRejectRequest request);

    void agreeExhibition(AdminExhibitionAgreeRequest request);

    void editExhibition(ExhibitionEditRequest request);
}
