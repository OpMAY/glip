<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>[${exhibition.title}] 전시 수정 페이지</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
          name="description"/>
    <meta content="Coderthemes"
          name="author"/>
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon"
          href="../../../resources/admin/assets/images/favicon.ico">

    <!-- App css -->
    <link href="../../../resources/admin/assets/css/config/default/bootstrap.min.css"
          rel="stylesheet"
          type="text/css"
          id="bs-default-stylesheet"/>
    <link href="../../../resources/admin/assets/css/config/default/app.min.css"
          rel="stylesheet"
          type="text/css"
          id="app-default-stylesheet"/>

    <link href="../../../resources/admin/assets/css/config/default/bootstrap-dark.min.css"
          rel="stylesheet"
          type="text/css"
          id="bs-dark-stylesheet"/>
    <link href="../../../resources/admin/assets/css/config/default/app-dark.min.css"
          rel="stylesheet"
          type="text/css"
          id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="../../../resources/admin/assets/css/icons.min.css"
          rel="stylesheet"
          type="text/css"/>
    <!-- custom -->
    <link href="../../../resources/admin/assets/css/custom.css"
          rel="stylesheet"
          type="text/css"/>

    <!-- third party css -->
    <link href="../../../resources/admin/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css"
          rel="stylesheet"
          type="text/css"/>
    <!-- third party css end -->

    <!-- third party css dropfy -->
    <link href="../../../resources/admin/assets/libs/dropzone/min/dropzone.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/dropify/css/dropify.min.css"
          rel="stylesheet"
          type="text/css"/>
    <!-- third party css -->

    <!-- third party css datepicker -->
    <link href="../../../resources/admin/assets/libs/spectrum-colorpicker2/spectrum.min.css"
          rel="stylesheet"
          type="text/css">
    <link href="../../../resources/admin/assets/libs/flatpickr/flatpickr.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <!-- third party css datepicker end-->
    <!-- third party css form -->
    <link href="../../../resources/admin/assets/libs/mohithg-switchery/switchery.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/multiselect/css/multi-select.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/select2/css/select2.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/selectize/css/selectize.bootstrap3.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="../../../resources/admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css"
          rel="stylesheet"
          type="text/css"/>
    <!-- third party css form end -->

    <!-- SMART EDITOR -->
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote.css">
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote-custom.css">
</head>

<!-- body start -->
<body class="loading"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "dark", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->
<div id="wrapper">

    <!-- Topbar Start -->
    <jsp:include page="common/header.jsp" flush="true"></jsp:include>
    <!-- end Topbar -->

    <!-- ========== Left Sidebar Start ========== -->
    <jsp:include page="common/left-side-bar.jsp" flush="true"></jsp:include>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Glip Manage</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">전시 관리</a></li>
                                    <li class="breadcrumb-item active">전시 수정</li>
                                </ol>
                            </div>
                            <h4 class="page-title">전시 수정</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="exhibition-detail">
                                    <div class="row" id="exhibition-detail-header">
                                        <div class="col-4">
                                        </div>
                                        <div class="col-3 offset-5 d-flex justify-content-end">
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-edit-confirm-modal"
                                                    data-bs-exhibition-no="${exhibition.no}"
                                                    class="btn btn-dark waves-effect waves-light top-right-button last">
                                                수정
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-edit-cancel-modal"
                                                    data-bs-exhibition-no="${exhibition.no}"
                                                    class="btn btn-secondary waves-effect waves-light top-right-button">
                                                취소
                                            </button>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">제목</label>
                                                <input type="text"
                                                       name="title"
                                                       placeholder="Input Title"
                                                       value="${exhibition.title}"
                                                       class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">메인 이미지</label>
                                                <input type="file"
                                                       name="main_image"
                                                       data-plugins="dropify"
                                                       data-max-file-size="5M"
                                                       data-default-file="${exhibition.img}"
                                                       data-height="400"/>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       name="subtitle"
                                                       placeholder="Input Simple Description"
                                                       value="${exhibition.subtitle}"
                                                       class="form-control">
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">시작 일자 - 종료 일자</label>
                                                        <input type="text"
                                                               id="range-datepicker"
                                                               class="form-control"
                                                               value="${exhibition.start_date} to ${exhibition.end_date}"
                                                               placeholder="2018-10-03 to 2018-10-10">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">오픈 시간</label>
                                                        <input type="text"
                                                               id="start-time"
                                                               class="form-control 24hours-timepicker"
                                                               placeholder="16:21" value="${exhibition.start_time}">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">마감 시간</label>
                                                        <input type="text"
                                                               id="end-time"
                                                               class="form-control 24hours-timepicker"
                                                               placeholder="16:21" value="${exhibition.end_time}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col d-grid">
                                                    <div class="mb-3">
                                                        <label class="form-label">전시회 주소</label>
                                                        <div class="input-group">
                                                            <input type="text"
                                                                   name="exhibition-address"
                                                                   placeholder="전시 주소를 입력하세요" disabled
                                                                   value="${exhibition.address}"
                                                                   class="form-control">
                                                            <button class="btn input-group-text btn-dark waves-effect waves-light"
                                                                    id="address-change"
                                                                    type="button">주소 변경
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">전시회 상세 주소</label>
                                                        <input type="text"
                                                               name="exhibition-address-detail"
                                                               placeholder="상세 주소를 입력해주세요."
                                                               value="${exhibition.address_details}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">주소 지도</label>
                                                <div class="w-100 background" data-bs-address="${exhibition.address}" data-bs-title="${exhibition.title}"
                                                     style="padding-top: 40%;
                             background-image:url('../../../resources/admin/assets/images/bg-auth.jpg');"
                                                     id="map-div"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">홈페이지 주소</label>
                                                <input type="text"
                                                       name="homepage-url"
                                                       placeholder="전시회를 대표할 홈페이지 주소를 입력해주세요."
                                                       value="${exhibition.homepage}"
                                                       class="form-control">
                                            </div>
                                            <div class="row join-writer-wrapper">
                                                <label class="form-label d-flex">
                                                    참여 작가
                                                </label>
                                                <div class="col-12 join-writer-inner">
                                                    <c:forEach items="${exhibition.author}" var="author">

                                                        <%-- Start --%>
                                                        <div class="row join-writer-item">
                                                            <div class="col-auto d-grid">
                                                                <div class="mb-3">
                                                                    <input type="text"
                                                                           name="writer"
                                                                           placeholder="작가 이름을 입력하세요."
                                                                           value="${author.name}"
                                                                           class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-6 d-flex justify-content-center align-items-baseline">
                                                                <input type="text"
                                                                       name="writer-url"
                                                                       value="${author.url}"
                                                                       placeholder="작가 SNS 및 홈페이지 URL을 입력해주세요."
                                                                       class="form-control">
                                                                <span data-action="delete"
                                                                      class="cursor-pointer badge bg-danger float-end ms-1">삭제</span>
                                                            </div>
                                                        </div>
                                                        <%-- END --%>

                                                    </c:forEach>
                                                </div>
                                                <div class="col-12 join-writer-plus mb-3">
                                                    <button type="button"
                                                            onclick="addJoinWriter();"
                                                            class="btn btn-primary waves-effect waves-light">추가하기
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label for="exhibition-category-select"
                                                               class="form-label">전시회 종류</label>
                                                        <select class="form-select"
                                                                id="exhibition-category-select">
                                                            <option selected>${exhibition.category}</option>
                                                            <option>Writer</option>
                                                            <option>Picture</option>
                                                            <option>Video</option>
                                                            <option>Image</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-6 d-grid">
                                                    <div class="mb-3">
                                                        <label class="form-label">추천 해시태그</label>
                                                        <select id="selectize-optgroup"
                                                                multiple>
                                                            <c:forEach items="${exhibition.hashtag}" var="hashtag">
                                                                <option value="${hashtag.replaceAll("\"", "")}"
                                                                        selected>
                                                                    #${hashtag.replaceAll("\"", "")}</option>
                                                            </c:forEach>
                                                            <option value="추천 해시태그1">#추천 해시태그1</option>
                                                            <option value="추천 해시태그2">#추천 해시태그2</option>
                                                            <option value="추천 해시태그3">#추천 해시태그3</option>
                                                            <option value="추천 해시태그4">#추천 해시태그4</option>
                                                            <option value="추천 해시태그5">#추천 해시태그5</option>
                                                            <option value="추천 해시태그6">#추천 해시태그6</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">Detail Description</label>
                                                <div id="summernote">${exhibition.details}</div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">관련 상품</label>
                                                <div class="row row-cols-4" id="related-products">
                                                    <c:if test="${exhibition.related_products.size() == 0}">
                                                        <h4 class="no-item-text">관련 상품이 존재하지 않습니다.</h4>
                                                    </c:if>
                                                    <c:forEach items="${exhibition.related_products}" var="product">
                                                        <div class="col">
                                                            <div class="card product-box">
                                                                <div class="card-body">
                                                                    <div class="product-action">
                                                                            <%-- TODO 새 창에서 상품 열기 --%>
                                                                        <a href="javascript: void(0);"
                                                                           class="btn btn-info btn-xs waves-effect waves-light"><i
                                                                                class="mdi mdi-details"></i></a>
                                                                    </div>
                                                                    <div class="bg-light">
                                                                        <img src="${product.img}"
                                                                             alt="product-pic"
                                                                             class="img-fluid">
                                                                    </div>

                                                                    <div class="product-info" data-bs-product-no="${product.no}">
                                                                        <div class="row align-items-center">
                                                                            <div class="col">
                                                                                <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                        href="javascript:void(0);"
                                                                                        class="text-dark">${product.title}</a>
                                                                                </h5>
                                                                            </div>
                                                                            <div class="col-auto">
                                                                                <div class="product-price-tag">
                                                                                    ₩<fmt:formatNumber value="${product.price}"/>
                                                                                </div>
                                                                            </div>
                                                                        </div> <!-- end row -->
                                                                    </div> <!-- end product info-->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <button type="button"
                                                        data-bs-target="#full-width-modal"
                                                        data-bs-toggle="modal"
                                                        data-bs-exhibition-no="${exhibition.no}"
                                                        class="btn btn-primary waves-effect waves-light">관련상품 추가하기
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
                <!-- end row -->

            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <jsp:include page="common/footer.jsp" flush="true"></jsp:include>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->

<!-- Modal -->
<!-- 추가하기 모달-->
<div id="full-width-modal"
     class="modal fade"
     tabindex="-1"
     role="dialog"
     aria-labelledby="fullWidthModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-full-width modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"
                    id="fullWidthModalLabel">관련 상품 등록</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table dt-responsive nowrap w-100 alternative-page-datatable" id="modal-table">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>상품 이름</th>
                        <th>카테고리</th>
                        <th>가격</th>
                        <th>할인율</th>
                        <th>판매가</th>
                        <th data-orderable="false"></th>
                    </tr>
                    </thead>
                    <tbody id="selectable-product-body">
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button"
                        class="btn btn-light"
                        data-bs-dismiss="modal">닫기
                </button>
                <button type="button"
                        data-bs-dismiss="modal"
                        class="btn btn-primary">추가 하기
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal fade"
     id="exhibition-edit-cancel-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionEditCancelModalLabel">수정 취소</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>전시 수정을 취소하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">닫기
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">취소
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-edit-confirm-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionEditConfirmModalLabel">수정 완료</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>전시 수정을 완료하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">수정
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<!-- Vendor js -->
<script src="../../../resources/admin/assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="../../../resources/admin/assets/js/app.min.js"></script>

<!-- Custom App js -->
<script src="../../../resources/admin/assets/js/app_custom.js"></script>

<!-- third party js -->
<script src="../../../resources/admin/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="../../../resources/admin/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="../../../resources/admin/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="../../../resources/admin/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<!-- third party js ends -->
<!-- third party js dropfy -->
<!-- Plugins js -->
<script src="../../../resources/admin/assets/libs/dropzone/min/dropzone.min.js"></script>
<script src="../../../resources/admin/assets/libs/dropify/js/dropify.min.js"></script>

<!-- Init js-->
<script src="../../../resources/admin/assets/js/pages/form-fileuploads.init.js"></script>
<!-- third party js dropfy end -->
<!--third party js datepicker -->
<!-- Plugins js-->
<script src="../../../resources/admin/assets/libs/flatpickr/flatpickr.min.js"></script>
<script src="../../../resources/admin/assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
<script src="../../../resources/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
<script src="../../../resources/admin/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<!-- Init js-->
<script src="../../../resources/admin/assets/js/pages/form-pickers.init.js"></script>
<!--third party js datepicker end -->
<!-- third party js form -->
<script src="../../../resources/admin/assets/libs/selectize/js/standalone/selectize.min.js"></script>
<script src="../../../resources/admin/assets/libs/mohithg-switchery/switchery.min.js"></script>
<script src="../../../resources/admin/assets/libs/multiselect/js/jquery.multi-select.js"></script>
<script src="../../../resources/admin/assets/libs/select2/js/select2.min.js"></script>
<script src="../../../resources/admin/assets/libs/jquery-mockjax/jquery.mockjax.min.js"></script>
<script src="../../../resources/admin/assets/libs/devbridge-autocomplete/jquery.autocomplete.min.js"></script>
<script src="../../../resources/admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="../../../resources/admin/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<!-- third party js form end -->
<!-- Init js-->
<script src="../../../resources/admin/assets/js/pages/form-advanced.init.js"></script>
<!-- common js -->
<script src="../../../resources/admin/assets/js/common.js"></script>
<!-- server js -->
<script src="../../../resources/admin/assets/js/server.js"></script>
<!-- Kakao Map -->
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cde34104a73ef798b0fc9edc7fb3bc5c&libraries=services,drawing"></script>
<!-- SMART EDITOR js -->
<script src="../../../resources/js/module/summernote/summernote.js"></script>
<script src="../../../resources/js/module/summernote/summernote-kr.js"></script>
<!-- Daum POST Code -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $('#address-change').on('click', function () {
        new daum.Postcode({
            oncomplete: function (data) {
                console.log(data);
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
                $('input[name=exhibition-address]').val(data.address);
                kakaoMapInit(mapContainer, data.address, $('input[name=title]').val());
            },
            onclose: function (state) {
                console.log("state : ", state);
                if (state === 'COMPLETE_CLOSE') {

                } else if (state === 'FORCE_CLOSE') {

                }
            }
        }).open();
    })

</script>
<script>
    $(document).ready(function () {
        /** SMART EDITOR **/
        $('#summernote').summernote({
            placeholder: '내용을 입력해주세요.',
            tabsize: 2,
            height: 600,
            lang: 'ko-KR',
            focus: true, // 활성화 시 input focus
            disableResizeEditor: true, // Size 조절
            toolbar: [ // Toolbar Set
                ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['insert', ['picture', 'link']],
                ['view', ['help']]
            ],
            maxUploadSize: 1024 * 1024 * 10,
            maxUploadOnError: () => {
                alert('사진 용량이 너무 큽니다. 다른 사진을 이용해주세요.\n파일 당 최대 업로드 용량 : 10MB');
                $('[data-dismiss="modal"]').click();
            },
            /**
             * Description : 스마트에디터 파일 업로더 Ajax
             * Prerequisite : Summernote Smarteditor가 존재 해야한다.
             * Parameter : deferred -> smarteditor 내무에 존재하는 변수
             * Return : Non
             * Date : 2021-07-12
             * Version : 1
             * */
            imageUploader: (deferred, file) => {
                let formData = new FormData(); // HTML5
                formData.append("file", file);
                fileUploadFetchFunction('/smarteditor/image/upload', formData, function(res) {
                    if(res.status === 200) {
                        deferred.resolve(res.data.url);
                    }
                })
            }
        });
        /** Table Initialize */
        $('.alternative-page-datatable').DataTable({
            pagingType: 'full_numbers',
            drawCallback: function () {
                $('.dataTables_paginate > .pagination').addClass('pagination-rounded');
                $(this).find('tbody tr').each((i, e) => {
                    $(e).click(function () {
                        /* TODO This Right Side Open And Refreshing Event Init */
                    });
                });
            }
        });

        /** 모달 생성시 모달 버튼에서 데이터 따오기 (필독하고 사용하세요.)*/
        $('#full-width-modal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var modal = $(this);
            if (button.data('init') !== 'true') {
                normalFetchFunction('/admin/exhibition/product/list?no=' + button.data().bsExhibitionNo, 'GET', null, fullWidthModalOpenDoneFunction)
                button.data('init', 'true');
            }
            // TODO 표에서 한번 설정한 데이터를 check로 설정 + 새로 생긴 데이터 Call -> 꼭 필요?
            modal.find('.modal-footer button.btn-primary').click(function () {
                const relatedList = [];
                modal.find('input[type=checkbox]:checked').each((index, element) => {
                    relatedList.push($(element).data().key);
                })
                console.log(relatedList);
                const data = {"product_list": relatedList};
                if (relatedList.length > 0) {
                    normalFetchFunction('/admin/exhibition/product/select', 'POST', data, fullWidthModalCloseDoneFunction);
                } else {
                    const div = $('#related-products');
                    div.children().remove();
                    div.append('<h4 class="no-item-text">관련 상품이 존재하지 않습니다.</h4>');
                }
            });
        });

        $('#full-width-modal').on('hidden.bs.modal', function (event) {
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        $('#exhibition-edit-cancel-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                window.location.replace('/admin/exhibition/detail.do?no=' + $button.data().bsExhibitionNo);
            });
        });

        $('#exhibition-edit-cancel-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        $('#exhibition-edit-confirm-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                // TODO FETCH EDIT
                const formData = new FormData();
                const data = {};
                data.no = $button.data().bsExhibitionNo;
                data.title = $('input[name=title]').val();
                data.subtitle = $('input[name=subtitle]').val();
                data.start_date = rangeDatePickerSeparator($('#range-datepicker').val(), 'start_date');
                data.end_date = rangeDatePickerSeparator($('#range-datepicker').val(), 'end_date');
                data.start_time = $('#start-time').val();
                data.end_time = $('#end-time').val();
                data.address = $('input[name=exhibition-address]').val();
                data.address_detail = $('input[name=exhibition-address-detail]').val();
                data.homepage = $('input[name=homepage-url]').val();
                data.author = [];
                $('.join-writer-inner .join-writer-item').each((index, elem) => {
                    const author = {};
                    author.name = $(elem).children().find('input[name=writer]').val();
                    author.url = $(elem).children().find('input[name=writer-url]').val();
                    data.author.push(author);
                })
                data.category = $('select[id=exhibition-category-select] option:selected').val();
                data.hashtag = $('#selectize-optgroup').val();
                // 서머노트 내부의 html 결과물을 가져오는 코드입니다.
                data.details = $('#summernote').summernote('code');
                data.related_list = [];
                $('.product-info').each((idx, elem) => {
                    data.related_list.push($(elem).data().bsProductNo);
                })
                data.address_x = $('#map-div').data().bsAddressX;
                data.address_y = $('#map-div').data().bsAddressY;
                console.log(data);
                formData.append('exhibition', JSON.stringify(data));
                if($('input[name=main_image]')[0].files.length === 1) {
                    formData.append('main_img', $('input[name=main_image]')[0].files[0]);
                } else if($($('input[name=main_image]')[0]).data().defaultFile === undefined) {
                    alert('메인 이미지를 등록해주세요.');
                    return;
                }

                formData.forEach((value, key) => {
                    console.log(key);
                    console.log(value);
                })

                fileUploadFetchFunction('/admin/exhibition/edit', formData, function (res) {
                    if(res.status === 200) {
                        alert('수정이 완료되었습니다.');
                        window.location.replace('/admin/exhibition/detail.do?no=' + $button.data().bsExhibitionNo);
                    }
                });
            });
        });

        $('#exhibition-edit-confirm-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        /** Init Join Writer EventListener*/
        // $('.join-writer-item span[data-action="delete"]').on('click', function (e) {
        //     console.log(this, e, e.currentTarget);
        // });
        $('.join-writer-inner').on('click', '.cursor-pointer', function () {
            const thisAuthor = $(this).parent().parent();
            if (thisAuthor.hasClass('join-writer-item')) {
                if (confirm('해당 작가를 삭제하시겠습니까?')) {
                    thisAuthor.remove();
                }
            }
        })
    });

    const editDoneFunction = (res) => {

    }

    const fullWidthModalCloseDoneFunction = (res) => {
        if (res.status === 200) {
            const div = $('#related-products');
            div.children().remove();
            console.log(res);
            const list = res.data.product_list;
            if (list.length === 0) {
                div.append('<h4 class="no-item-text">관련 상품이 존재하지 않습니다.</h4>');
            } else {
                list.forEach((elem, idx) => {
                    div.append('<div class="col">' +
                        '<div class="card product-box">' +
                        '<div class="card-body">' +
                        '<div class="product-action">' +
                        '<a href="javascript: void(0);"' +
                        'class="btn btn-info btn-xs waves-effect waves-light"><i' +
                        'class="mdi mdi-details"></i></a>' +
                        '</div>' +
                        '<div class="bg-light">' +
                        '<img src="' + elem.img + '"' +
                        'alt="product-pic"' +
                        'class="img-fluid">' +
                        '</div>' +

                        '<div class="product-info" data-bs-product-no="' + elem.no + '">' +
                        '<div class="row align-items-center">' +
                        '<div class="col">' +
                        '<h5 class="font-16 mt-0 sp-line-1"><a' +
                        'href="javascript:void(0);"' +
                        'class="text-dark">' + elem.title + '</a>' +
                        '</h5>' +
                        '</div>' +
                        '<div class="col-auto">' +
                        '<div class="product-price-tag">' +
                        '₩' + commaFunction(elem.price) + '' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    );
                })

            }
        }
    }

    const fullWidthModalOpenDoneFunction = (res) => {
        if (res.status === 200) {
            const modalBody = $('#selectable-product-body');
            modalBody.children().remove();
            const list = res.data.product_list;
            const totalList = [];
            list.forEach((elem, idx) => {
                const element = [
                    idx + 1,
                    elem.title,
                    elem.category,
                    commaFunction(elem.price) + '원',
                    elem.sales + '%',
                    commaFunction(((elem.price * 1) * (100 - elem.sales * 1) / 100)) + '원',
                    '<div class="form-check d-inline-block me-1"><input type="checkbox" ' + (elem.product_related ? 'checked ' : ' ') + 'class="form-check-input" data-key="' + elem.no + '"></div>'
                ];
                totalList.push(element);
            })
            let table = $('#modal-table').DataTable();
            table.clear().rows.add(totalList).draw();
            // list.forEach((elem, index) => {
            //     modalBody.append('<tr>' +
            //         '<td>' + (index + 1) + '</td>' +
            //         '<td>' + elem.title + '</td>' +
            //         '<td>' + elem.category + '</td>' +
            //         '<td>' + elem.price + '원</td>' +
            //         '<td>' + elem.sales + '%</td>' +
            //         '<td>' + ((elem.price * 1) * (100 - elem.sales * 1) / 100) + '원</td>' +
            //         '<td>' +
            //         '    <div class="form-check d-inline-block me-1">' +
            //         '        <input type="checkbox"' +
            //         '               class="form-check-input" data-key="' + elem.no + '">' +
            //         '    </div>' +
            //         '</td>' +
            //         '</tr>');
            // })
        }
    }

    const rangeDatePickerSeparator = (value, type) => {
        if (value.length <= 10) {
            alert('시작일자 - 종료일자를 올바르게 선택해주세요.');
            return;
        }
        if (type === 'start_date') {
            return value.split(' to ')[0];
        } else if (type === 'end_date') {
            return value.split(' to ')[1];
        }
    }

    const addJoinWriter = () => {
        $('.join-writer-wrapper .join-writer-inner').append(appendJoinWriter());
    }

    const appendJoinWriter = () => {
        return `<div class="row join-writer-item">
                     <div class="col-auto d-grid">
                        <div class="mb-3">
                            <input type="text"
                                   name="writer"
                                   placeholder="작가 이름을 입력하세요."
                                   class="form-control">
                        </div>
                    </div>
                    <div class="col-6 d-flex justify-content-center align-items-baseline">
                        <input type="text"
                               name="writer-url"
                               placeholder="작가 SNS 및 홈페이지 URL을 입력해주세요."
                               class="form-control">
                        <span data-action="delete"
                              class="cursor-pointer badge bg-danger float-end ms-1">삭제</span>
                    </div>
                </div>`;
    }
</script>
<script>
    const mapContainer = document.querySelector('#map-div');
    const kakao_map_target_address = mapContainer.dataset.bsAddress;
    const kakap_map_label = mapContainer.dataset.bsTitle;

    kakaoMapInit(mapContainer, kakao_map_target_address, kakap_map_label);

    /**
     * 카카오 맵에 주소로 위치를 찾아 지도를 생성하고 마커를 생성합니다.
     * @requires : kakao sdk javascript import with API key
     * @param mapContainer - 지도를 표시할 element
     * @param address - 주소
     * @param label - 마커 위에 표시할 이름 (선택 : 없으면 표시 X)
     */
    function kakaoMapInit(mapContainer, address, label) {
        // 주소-좌표 변환 객체를 생성합니다
        const geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다
        geocoder.addressSearch(address, (result, status) => {
            // console.log(result, status);
            // 정상적으로 검색이 완료됐으면
            if (status === kakao.maps.services.Status.OK) {
                displayKakaoMap(mapContainer, result[0].y, result[0].x, label);
                $(mapContainer).data().bsAddressX = result[0].x;
                $(mapContainer).data().bsAddressY = result[0].y;
            } else {
                // todo : logic when no result found
                mapContainer.innerText = '주소와 일치하는 지도 정보가 없습니다.';
            }
        });
    }

    function displayKakaoMap(mapContainer, latitude, longitude, label) {
        const mapOption = {
            center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
            level: 2, // 지도의 확대 레벨
            draggable: false
        };
        const map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다
        const markerPosition = new kakao.maps.LatLng(latitude, longitude);

        // 마커를 생성합니다
        const marker = new kakao.maps.Marker({
            position: markerPosition
        });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        if (label !== undefined) {
            const infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">' + label + '</div>'
            });
            infowindow.open(map, marker);
        }
    }
</script>
</body>
</html>