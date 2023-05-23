<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>[${exhibition.title}] 전시 상세</title>
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
                                    <li class="breadcrumb-item active">전시 상세</li>
                                </ol>
                            </div>
                            <h4 class="page-title">전시 상세</h4>
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
                                            <h4 class="header-title">${exhibition.title}</h4>
                                        </div>
                                        <div class="col-3 offset-5 d-flex justify-content-end">
                                            <%--TODO 전시 상태 별 버튼 배치 변경 --%>
                                            <c:choose>
                                                <c:when test="${exhibition.register_status == 'REGISTERED'}">
                                                    <%-- 등록(승인)된 전시일 경우 --%>
                                                    <c:choose>
                                                        <c:when test="${exhibition.active_status == true}">
                                                            <%-- 활성화된 전시일 경우 --%>
                                                            <button type="button"
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#exhibition-inactive-modal"
                                                                    data-bs-exhibition-no="${exhibition.no}"
                                                                    class="btn btn-secondary waves-effect waves-light top-right-button last">
                                                                비활성화
                                                            </button>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <%-- 비활성화된 전시일 경우 --%>
                                                            <button type="button"
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#exhibition-active-modal"
                                                                    data-bs-exhibition-no="${exhibition.no}"
                                                                    class="btn btn-primary waves-effect waves-light top-right-button last">
                                                                활성화
                                                            </button>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <button type="button" data-bs-exhibition-no="${exhibition.no}" id="exhibition-edit"
                                                            class="btn btn-dark waves-effect waves-light top-right-button">
                                                        수정
                                                    </button>
                                                    <button type="button"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#exhibition-delete-modal"
                                                            data-bs-exhibition-no="${exhibition.no}"
                                                            class="btn btn-danger waves-effect waves-light top-right-button">
                                                        삭제
                                                    </button>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${exhibition.register_status == 'REQUESTED'}">
                                                            <button type="button"
                                                                    data-bs-exhibition-no="${exhibition.no}" id="exhibition-edit"
                                                                    class="btn btn-dark waves-effect waves-light top-right-button last">
                                                                수정
                                                            </button>
                                                            <button type="button"
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#exhibition-agree-modal"
                                                                    data-bs-exhibition-no="${exhibition.no}"
                                                                    class="btn btn-success waves-effect waves-light top-right-button">
                                                                승인
                                                            </button>
                                                            <button type="button"
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#exhibition-reject-modal"
                                                                    data-bs-exhibition-no="${exhibition.no}"
                                                                    class="btn btn-danger waves-effect waves-light top-right-button">
                                                                반려
                                                            </button>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <button type="button"
                                                                    data-bs-exhibition-no="${exhibition.no}" id="exhibition-edit"
                                                                    class="btn btn-dark waves-effect waves-light top-right-button last">
                                                                수정
                                                            </button>
                                                            <button type="button"
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#exhibition-delete-modal"
                                                                    data-bs-exhibition-no="${exhibition.no}"
                                                                    class="btn btn-danger waves-effect waves-light top-right-button">
                                                                삭제
                                                            </button>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">메인 이미지</label>
                                                <div class="background"
                                                     style="padding-top: 30%; background-image:
                                                             url('${exhibition.img}')"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       readonly
                                                       name="simple_desc"
                                                       value="${exhibition.subtitle}"
                                                       placeholder="${exhibition.subtitle}"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">시작 일자 - 종료 일자</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="${exhibition.start_date} ~ ${exhibition.end_date}"
                                                               value="${exhibition.start_date} ~ ${exhibition.end_date}">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">오픈 시간</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="${exhibition.start_time}"
                                                               value="${exhibition.start_time}">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">마감 시간</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="${exhibition.end_time}"
                                                               value="${exhibition.end_time}">
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
                                                                   readonly
                                                                   placeholder="${exhibition.address}"
                                                                   value="${exhibition.address}"
                                                                   class="form-control readonly">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">상세 주소</label>
                                                        <input type="text"
                                                               name="exhibition-address-detail"
                                                               readonly
                                                               placeholder="${exhibition.address_details}"
                                                               value="${exhibition.address_details}"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">주소 지도</label>
                                                <div class="w-100 background"
                                                     style="padding-top: 40%;
                             background-image:url('../../../resources/admin/assets/images/bg-auth.jpg');"
                                                     data-bs-address="${exhibition.address}"
                                                     data-bs-map-label="${exhibition.title}"
                                                     id="map-div"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">홈페이지 주소<span
                                                        data-sns-url="${exhibition.homepage}"
                                                        class="cursor-pointer badge bg-dark float-end my-auto ms-1 link-move">링크 이동</span></label>
                                                <input type="text"
                                                       name="homepage-url"
                                                       readonly
                                                       placeholder="${exhibition.homepage}"
                                                       value="${exhibition.homepage}"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="row join-writer-wrapper">
                                                <div class="col-12 join-writer-inner">
                                                    <c:forEach items="${exhibition.author}" var="author">
                                                        <div class="row join-writer-item">
                                                            <div class="col-auto d-grid">
                                                                <div class="mb-3">
                                                                    <label class="form-label d-flex">
                                                                        참여 작가
                                                                        <span data-sns-url="${author.url}"
                                                                              class="cursor-pointer badge bg-dark float-end my-auto ms-1 link-move">링크 이동</span>
                                                                    </label>
                                                                    <input type="text"
                                                                           name="writer"
                                                                           readonly
                                                                           placeholder="${author.name}"
                                                                           value="${author.name}"
                                                                           class="form-control readonly">
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <label class="form-label empty-label"></label>
                                                                <input type="text"
                                                                       name="writer-url"
                                                                       readonly
                                                                       placeholder="${author.url}"
                                                                       value="${author.url}"
                                                                       class="form-control readonly">
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">전시 유형</label>
                                                        <input type="text"
                                                               name="exhibition-type"
                                                               readonly
                                                               placeholder="${exhibition.category}"
                                                               value="${exhibition.category}"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                                <div class="col-6 d-grid">
                                                    <div class="mb-3">
                                                        <label class="form-label">추천 해시태그</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               value="<c:forEach items="${exhibition.hashtag}" var="hashtag">#${hashtag.replaceAll("\"", "")} </c:forEach>">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">상세 설명</label>
                                                <%--TODO smart editor data to HTML --%>
                                                <div class="smart-editor-content-div">
                                                    ${exhibition.details}
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">관련 상품</label>
                                                <div class="row row-cols-4">
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

                                                                    <div class="product-info">
                                                                        <div class="row align-items-center">
                                                                            <div class="col">
                                                                                <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                        href="javascript:void(0);"
                                                                                        class="text-dark">${product.title}</a>
                                                                                </h5>
                                                                            </div>
                                                                            <div class="col-auto">
                                                                                <div class="product-price-tag">
                                                                                    ₩${product.price}
                                                                                </div>
                                                                            </div>
                                                                        </div> <!-- end row -->
                                                                    </div> <!-- end product info-->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
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
<div class="modal fade"
     id="exhibition-delete-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionDeleteModalLabel">전시 삭제</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title">${exhibition.title}</span>' 전시 정보를 삭제하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">삭제
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-agree-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionAgreeModalLabel">전시 승인</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title">${exhibition.title}</span>' 전시를 승인하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-success waves-effect waves-light">승인
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-reject-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionRejectModalLabel">전시 반려</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title">${exhibition.title}</span>' 전시 정보를 반려하시겠어요?</p>
                <div class="mb-3">
                    <label class="form-label">반려 사유</label>
                    <input type="text"
                           name="rejected-cause"
                           placeholder="반려 사유를 입력해주세요."
                           class="form-control">
                </div>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">반려
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-inactive-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionInActiveModalLabel">전시 비활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title">${exhibition.title}</span>' 전시를 비활성화 하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-secondary waves-effect waves-light">비활성화
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<div class="modal fade"
     id="exhibition-active-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionActiveModalLabel">전시 활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title">${exhibition.title}</span>' 전시를 활성화 하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">활성화
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
<script>
    $(document).ready(function () {
        /** Modal Event Listener */
        $('#exhibition-delete-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/delete', 'POST', data, exhibitionDeleteDoneFunction);
            });
        });
        $('#exhibition-agree-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/agree', 'POST', data, exhibitionAgreeDoneFunction);
            });
        });
        $('#exhibition-reject-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                let reject = $('input[name=rejected-cause]').val()
                if (reject.length > 0 && reject.length < 500) {
                    const data = {
                        "exhibtion_no": $button.data().bsExhibitionNo,
                        "reject_details": reject
                    }
                    normalFetchFunction('/admin/exhibition/reject', 'POST', data, exhibitionRejectDoneFunction)
                }
            });
        });
        $('#exhibition-inactive-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/active', 'POST', data, exhibitionActiveStatusFunction);
            });
        });
        $('#exhibition-active-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/active', 'POST', data, exhibitionActiveStatusFunction);
            });
        });

        $('#exhibition-delete-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
        $('#exhibition-agree-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
        $('#exhibition-reject-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
        $('#exhibition-inactive-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
        $('#exhibition-active-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
    });
</script>
<script>
    $('.link-move').on('click', function () {
        window.open($(this).data('sns-url'), '_blank');
    })

    $('#exhibition-edit').on('click', function () {
        window.location.href='/admin/exhibition/update.do?no='+$(this).data().bsExhibitionNo;
    })

    const exhibitionActiveStatusFunction = (res) => {
        if (res.status === 200) {
            alert('상태가 변경되었습니다.');
            window.location.reload();
        }
    }

    const exhibitionRejectDoneFunction = (res) => {
        if(res.status === 200) {
            alert('전시 등록 요청이 반려되었습니다.');
            window.location.reload();
        }
    }

    const exhibitionDeleteDoneFunction = (res) => {
        if(res.status === 200) {
            alert('전시 정보를 삭제했습니다.');
            window.location.replace('/admin/exhibition/process.do');
        }
    }
    const exhibitionAgreeDoneFunction = (res) => {
        if(res.status === 200) {
            alert('전시 정보를 승인했습니다.');
            window.location.reload();
        }
    }
</script>

<script>
    const mapContainer = document.querySelector('#map-div');
    const kakao_map_target_address = mapContainer.dataset.bsAddress;
    const kakap_map_label = mapContainer.dataset.bsTitle;

    kakaoMapInit(mapContainer, kakao_map_target_address);

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