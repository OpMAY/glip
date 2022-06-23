<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>[전시 제목] 전시 상세</title>
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
    <link href="../../../resources/admin/assets/libs/datatables.net-select-bs5/css//select.bootstrap5.min.css"
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
                                            <h4 class="header-title">아폴론의 화살</h4>
                                        </div>
                                        <div class="col-3 offset-5 d-flex justify-content-end">
                                            <%--TODO 전시 상태 별 버튼 배치 변경 --%>
                                            <button type="button"
                                                    class="btn btn-dark waves-effect waves-light">수정하기
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-agree-modal"
                                                    data-bs-exhibition-no="1"
                                                    class="btn btn-success waves-effect waves-light"
                                                    style="margin-left: 10px;">전시 승인
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-reject-modal"
                                                    class="btn btn-danger waves-effect waves-light"
                                                    style="margin-left: 10px;">전시 반려
                                            </button>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">메인 이미지</label>
                                                <div class="background"
                                                     style="padding-top: 30%; background-image:
                        url('../../../resources/admin/assets/images/small/img-2.jpg')"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       readonly
                                                       name="simple_desc"
                                                       placeholder="Input Simple Description"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">시작 일자 - 종료 일자</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="2021.12.12 ~ 2021.12.19">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">오픈 시간</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="16:00">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">마감 시간</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               placeholder="19:00">
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
                                                                   placeholder="서울특별시 관악구 남부순환로 1892"
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
                                                               placeholder="4층"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">주소 지도</label>
                                                <div class="w-100 background"
                                                     style="padding-top: 40%;
                             background-image:url('../../../resources/admin/assets/images/bg-auth.jpg');"
                                                     id="map-div"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">홈페이지 주소<span
                                                        data-sns-url="https://www.naver.com/"
                                                        class="cursor-pointer badge bg-dark float-end my-auto ms-1 exhibition-link-move">링크 이동</span></label>
                                                <input type="text"
                                                       name="homepage-url"
                                                       readonly
                                                       placeholder="https://www.naver.com/"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="row join-writer-wrapper">
                                                <div class="col-12 join-writer-inner">
                                                    <div class="row join-writer-item">
                                                        <div class="col-auto d-grid">
                                                            <div class="mb-3">
                                                                <label class="form-label d-flex">
                                                                    참여 작가
                                                                    <span data-sns-url="https://www.naver.com/"
                                                                          class="cursor-pointer badge bg-dark float-end my-auto ms-1 exhibition-link-move">링크 이동</span>
                                                                </label>
                                                                <input type="text"
                                                                       name="writer"
                                                                       readonly
                                                                       placeholder="유병준"
                                                                       class="form-control readonly">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <label class="form-label empty-label"></label>
                                                            <input type="text"
                                                                   name="writer-url"
                                                                   readonly
                                                                   placeholder="http://www.naver.com"
                                                                   class="form-control readonly">
                                                        </div>
                                                    </div>
                                                    <div class="row join-writer-item">
                                                        <div class="col-auto d-grid">
                                                            <div class="mb-3">
                                                                <label class="form-label d-flex">
                                                                    참여 작가
                                                                    <span onclick="javascript:void(0);"
                                                                          class="cursor-pointer badge bg-dark float-end my-auto ms-1">Move</span>
                                                                </label>
                                                                <input type="text"
                                                                       name="writer"
                                                                       readonly
                                                                       placeholder="Input Enter Writer"
                                                                       class="form-control readonly">
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <label class="form-label empty-label"></label>
                                                            <input type="text"
                                                                   name="writer-url"
                                                                   readonly
                                                                   placeholder="Input Enter Writer Url"
                                                                   class="form-control readonly">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-3">
                                                    <div class="mb-3">
                                                        <label class="form-label">전시 유형</label>
                                                        <input type="text"
                                                               name="exhibition-type"
                                                               readonly
                                                               placeholder="사진(Photography)"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                                <div class="col-6 d-grid">
                                                    <div class="mb-3">
                                                        <label class="form-label">추천 해시태그</label>
                                                        <input type="text"
                                                               readonly
                                                               class="form-control readonly"
                                                               value="#awesome #neat">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">상세 설명</label>
                                                <%--TODO smart editor data to HTML --%>
                                                <textarea class="form-control readonly"
                                                          readonly
                                                          id="detail-description"
                                                          placeholder="Smart Editor"
                                                          rows="5"></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">관련 상품</label>
                                                <div class="row row-cols-4">
                                                    <div class="col">
                                                        <div class="card product-box">
                                                            <div class="card-body">
                                                                <div class="product-action">
                                                                    <a href="javascript: void(0);"
                                                                       class="btn btn-info btn-xs waves-effect waves-light"><i
                                                                            class="mdi mdi-details"></i></a>
                                                                </div>
                                                                <div class="bg-light">
                                                                    <img src="../../../resources/admin/assets/images/products/product-1.png"
                                                                         alt="product-pic"
                                                                         class="img-fluid">
                                                                </div>

                                                                <div class="product-info">
                                                                    <div class="row align-items-center">
                                                                        <div class="col">
                                                                            <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                    href="javascript:void(0);"
                                                                                    class="text-dark">아폴론의 화살 티셔츠</a></h5>
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <div class="product-price-tag">
                                                                                ₩23,000
                                                                            </div>
                                                                        </div>
                                                                    </div> <!-- end row -->
                                                                </div> <!-- end product info-->
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="card product-box">
                                                            <div class="card-body">
                                                                <div class="product-action">
                                                                    <a href="javascript: void(0);"
                                                                       class="btn btn-info btn-xs waves-effect waves-light"><i
                                                                            class="mdi mdi-details"></i></a>
                                                                </div>
                                                                <div class="bg-light">
                                                                    <img src="../../../resources/admin/assets/images/products/product-1.png"
                                                                         alt="product-pic"
                                                                         class="img-fluid">
                                                                </div>

                                                                <div class="product-info">
                                                                    <div class="row align-items-center">
                                                                        <div class="col">
                                                                            <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                    href="javascript:void(0);"
                                                                                    class="text-dark">아폴론의 화살 티셔츠</a></h5>
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <div class="product-price-tag">
                                                                                ₩23,000
                                                                            </div>
                                                                        </div>
                                                                    </div> <!-- end row -->
                                                                </div> <!-- end product info-->
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="card product-box">
                                                            <div class="card-body">
                                                                <div class="product-action">
                                                                    <a href="javascript: void(0);"
                                                                       class="btn btn-info btn-xs waves-effect waves-light"><i
                                                                            class="mdi mdi-details"></i></a>
                                                                </div>
                                                                <div class="bg-light">
                                                                    <img src="../../../resources/admin/assets/images/products/product-1.png"
                                                                         alt="product-pic"
                                                                         class="img-fluid">
                                                                </div>

                                                                <div class="product-info">
                                                                    <div class="row align-items-center">
                                                                        <div class="col">
                                                                            <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                    href="javascript:void(0);"
                                                                                    class="text-dark">아폴론의 화살 티셔츠</a></h5>
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <div class="product-price-tag">
                                                                                ₩23,000
                                                                            </div>
                                                                        </div>
                                                                    </div> <!-- end row -->
                                                                </div> <!-- end product info-->
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col">
                                                        <div class="card product-box">
                                                            <div class="card-body">
                                                                <div class="product-action">
                                                                    <a href="javascript: void(0);"
                                                                       class="btn btn-info btn-xs waves-effect waves-light"><i
                                                                            class="mdi mdi-details"></i></a>
                                                                </div>
                                                                <div class="bg-light">
                                                                    <img src="../../../resources/admin/assets/images/products/product-1.png"
                                                                         alt="product-pic"
                                                                         class="img-fluid">
                                                                </div>

                                                                <div class="product-info">
                                                                    <div class="row align-items-center">
                                                                        <div class="col">
                                                                            <h5 class="font-16 mt-0 sp-line-1"><a
                                                                                    href="javascript:void(0);"
                                                                                    class="text-dark">아폴론의 화살 티셔츠</a></h5>
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <div class="product-price-tag">
                                                                                ₩23,000
                                                                            </div>
                                                                        </div>
                                                                    </div> <!-- end row -->
                                                                </div> <!-- end product info-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 text-end">
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-inactive-modal"
                                                    data-bs-exhibition-no="1"
                                                    class="btn btn-secondary waves-effect waves-light">비활성화
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-agree-modal"
                                                    data-bs-exhibition-no="1"
                                                    class="btn btn-success waves-effect waves-light">전시 승인
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-reject-modal"
                                                    class="btn btn-danger waves-effect waves-light">전시 반려
                                            </button>
                                            <button type="button"
                                                    class="btn btn-dark waves-effect waves-light">수정하기
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-delete-modal"
                                                    data-bs-exhibition-no="1"
                                                    class="btn btn-danger waves-effect waves-light">삭제
                                            </button>
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
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <script>document.write(new Date().getFullYear())</script> &copy; Glip theme by <a
                            href="">Okiwi</a>
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-end footer-links d-none d-sm-block">
                            <a href="javascript:void(0);">About Us</a>
                            <a href="javascript:void(0);">Help</a>
                            <a href="javascript:void(0);">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
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
                    id="exhibitionDeleteModalLabel">Exhibition Delete</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">Cancel
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">Delete
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
                    id="exhibitionAgreeModalLabel">Exhibition Agree</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">Cancel
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-success waves-effect waves-light">Agree
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
                    id="exhibitionRejectModalLabel">Exhibition Reject</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
                <div class="mb-3">
                    <label class="form-label">반려 사유</label>
                    <input type="text"
                           name="rejected-cause"
                           placeholder="Input Rejected Cause"
                           class="form-control">
                </div>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">Cancel
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-danger waves-effect waves-light">Reject
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
                    id="exhibitionInActiveModalLabel">Exhibition InActive</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">Cancel
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-secondary waves-effect waves-light">InActive
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
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-agree-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-reject-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-inactive-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
    });
</script>
<script>
    $('.exhibition-link-move').on('click', function () {
        window.open($(this).data('sns-url'), '_blank');
    })
</script>

<script>
    const mapContainer = document.querySelector('#map-div');
    const kakao_map_target_address = '서울시 관악구 남부순환로 1892';
    const kakap_map_label = '우리회사';
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
            level: 4, // 지도의 확대 레벨
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