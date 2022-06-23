<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>[전시 제목] 전시 수정 페이지</title>
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
                                                <label class="form-label">제목</label>
                                                <input type="text"
                                                       name="title"
                                                       placeholder="Input Title"
                                                       class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">메인 이미지</label>
                                                <input type="file"
                                                       name="main_image"
                                                       data-plugins="dropify"
                                                       data-max-file-size="5M"
                                                       data-default-file="../../../resources/admin/assets/images/small/img-2.jpg"
                                                       data-height="400"/>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       name="simple_desc"
                                                       placeholder="Input Simple Description"
                                                       class="form-control">
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="mb-3">
                                                        <label class="form-label">시작 일자 - 종료 일자</label>
                                                        <input type="text"
                                                               id="range-datepicker"
                                                               class="form-control"
                                                               placeholder="2018-10-03 to 2018-10-10">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">오픈 시간</label>
                                                        <input type="text"
                                                               class="form-control 24hours-timepicker"
                                                               placeholder="16:21" value="16:00">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">마감 시간</label>
                                                        <input type="text"
                                                               class="form-control 24hours-timepicker"
                                                               placeholder="16:21" value="19:00">
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
                                                                   class="form-control">
                                                            <button class="btn input-group-text btn-dark waves-effect waves-light"
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
                                                               class="form-control">
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
                                                <label class="form-label d-flex">홈페이지 주소</label>
                                                <input type="text"
                                                       name="homepage-url"
                                                       placeholder="전시회를 대표할 홈페이지 주소를 입력해주세요."
                                                       class="form-control">
                                            </div>
                                            <div class="row join-writer-wrapper">
                                                <div class="col-12 join-writer-inner">
                                                    <%-- Start --%>
                                                    <label class="form-label d-flex">
                                                        참여 작가
                                                    </label>
                                                    <div class="row join-writer-item">
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
                                                    </div>
                                                    <%-- END --%>
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
                                                        <label for="example-select"
                                                               class="form-label">전시회 종류</label>
                                                        <select class="form-select"
                                                                id="example-select">
                                                            <option selected>사진(Photography)</option>
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
                                                                multiple
                                                                placeholder="추천 해시태그를 등록하세요.">
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
                                                <textarea class="form-control"
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
                                                                    <%-- TODO 새 창에서 상품 열기 --%>
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
                                                                                    class="text-dark">아폴론의 화살 티셔츠</a>
                                                                            </h5>
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
                                                <button type="button"
                                                        data-bs-target="#full-width-modal"
                                                        data-bs-toggle="modal"
                                                        class="btn btn-primary waves-effect waves-light">관련상품 추가하기
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-12 text-end">
                                            <button type="submit"
                                                    class="btn btn-primary waves-effect waves-light">수정하기
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
                <table class="table dt-responsive nowrap w-100 alternative-page-datatable">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>상품 이름</th>
                        <th>카테고리</th>
                        <th>가격</th>
                        <th>할인율</th>
                        <th>판매가</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>블랙으로 돌아온 루이스 폴센</td>
                        <td><span class="badge bg-primary">Photography</span></td>
                        <td>23,000원</td>
                        <td>0%</td>
                        <td>23,000원</td>
                        <td>
                            <div class="form-check d-inline-block me-1">
                                <input type="checkbox"
                                       class="form-check-input" data-key="1">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>블랙으로 돌아온 루이스 폴센</td>
                        <td><span class="badge bg-primary">Photography</span></td>
                        <td>23,000원</td>
                        <td>0%</td>
                        <td>23,000원</td>
                        <td>
                            <div class="form-check d-inline-block me-1">
                                <input type="checkbox"
                                       class="form-check-input" data-key="2">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>블랙으로 돌아온 루이스 폴센</td>
                        <td><span class="badge bg-primary">Photography</span></td>
                        <td>23,000원</td>
                        <td>0%</td>
                        <td>23,000원</td>
                        <td>
                            <div class="form-check d-inline-block me-1">
                                <input type="checkbox"
                                       class="form-check-input" data-key="3">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>블랙으로 돌아온 루이스 폴센</td>
                        <td><span class="badge bg-primary">Photography</span></td>
                        <td>23,000원</td>
                        <td>0%</td>
                        <td>23,000원</td>
                        <td>
                            <div class="form-check d-inline-block me-1">
                                <input type="checkbox"
                                       class="form-check-input" data-key="4">
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button"
                        class="btn btn-light"
                        data-bs-dismiss="modal">닫기
                </button>
                <button type="button"
                        class="btn btn-primary">추가 하기
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
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
<script>
    $(document).ready(function () {
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
            modal.find('.modal-footer button.btn-primary').click(function () {
                console.log(this);
                /** Fetch Process Deposit Settle*/
                modal.modal('hide');
                $(this).off('click');
            });
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
</body>
</html>