<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Glip 관리자 - 상품 목록</title>
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">상품 관리</a></li>
                                    <li class="breadcrumb-item active">상품 목록</li>
                                </ol>
                            </div>
                            <h4 class="page-title">총 30개의 상품</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table dt-responsive nowrap w-100 alternative-page-datatable">
                                        <thead>
                                        <!--TODO 2022-06-13 마지막 작업 tr만 수정하면됨-->
                                        <tr>
                                            <th>No</th>
                                            <th>상품 명</th>
                                            <th>카테고리</th>
                                            <th>가격</th>
                                            <th>할인율</th>
                                            <th>판매가</th>
                                            <th>조회 수</th>
                                            <th>스크랩 수</th>
                                            <th>등록 일자</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>블랙으로 돌아온 루이스 폴센</td>
                                            <td>포스터(Poster)</td>
                                            <td>23,000원</td>
                                            <td>0%</td>
                                            <td>23,000원</td>
                                            <td>23</td>
                                            <td>2</td>
                                            <td>2022.12.22</td>
                                            <td>
                                                <button type="button"
                                                        data-bs-target="#exhibition-abled-modal"
                                                        data-bs-product-no="1" data-bs-title="블랙으로 돌아온 루이스 폴센1"
                                                        data-bs-toggle="modal"
                                                        class="btn btn-sm btn-primary waves-effect waves-light">
                                                    활성화
                                                </button>
                                                <button type="button" data-bs-product-no="1"
                                                        class="btn btn-sm btn-info waves-effect waves-light product-detail">
                                                    상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>블랙으로 돌아온 루이스 폴센</td>
                                            <td>포스터(Poster)</td>
                                            <td>23,000원</td>
                                            <td>0%</td>
                                            <td>23,000원</td>
                                            <td>23</td>
                                            <td>2</td>
                                            <td>2022.12.22</td>
                                            <td>
                                                <button type="button"
                                                        class="btn btn-sm btn-danger waves-effect waves-light"
                                                        data-bs-target="#exhibition-disabled-modal"
                                                        data-bs-product-no="2" data-bs-title="블랙으로 돌아온 루이스 폴센2"
                                                        data-bs-toggle="modal">
                                                    비활성화
                                                </button>
                                                <button type="button" data-bs-product-no="2"
                                                        class="btn btn-sm btn-info waves-effect waves-light product-detail">
                                                    상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
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
     id="exhibition-disabled-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionDisabledModalLabel">상품 비활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>상품 '<span class="modal-product-title">블랙으로 돌아온 루이스 폴센</span>'을 비활성화 하시겠어요?</p>
                <p class="small">(비활성화 시 서비스에 상품 정보가 노출되지 않습니다.)</p>
                <div class="btn-container mt-3 text-end">
                    <button data-bs-dismiss="modal"
                            class="btn btn-sm btn-dark waves-effect waves-light"
                            type="button">취소
                    </button>
                    <button data-bs-dismiss="modal"
                            class="btn btn-sm btn-danger waves-effect waves-light">비활성화
                    </button>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="modal fade"
     id="exhibition-abled-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionAbledModalLabel">상품 활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>상품 '<span class="modal-product-title">블랙으로 돌아온 루이스 폴센</span>'을 활성화 하시겠어요?</p>
                <p class="small">(활성화 시 서비스에 상품 정보가 노출됩니다.)</p>
                <div class="btn-container mt-3 text-end">
                    <button data-bs-dismiss="modal"
                            class="btn btn-sm btn-dark waves-effect waves-light"
                            type="button">취소
                    </button>
                    <button data-bs-dismiss="modal"
                            class="btn btn-sm btn-success waves-effect waves-light">활성화
                    </button>
                </div>
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
<script src="../../../ㅊresources/admin/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<!-- third party js ends -->
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

        /** Modal Event Listener */
        $('#exhibition-disabled-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.modal-product-title').text($button.data('bsTitle'));
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-disabled-modal').on('hide.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });
        $('#exhibition-abled-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.modal-product-title').text($button.data('bsTitle'));
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-abled-modal').on('hide.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        $('.product-detail').on('click', function () {
            window.location.href='/admin/product/detail.do?no=' + $(this).data('bsProductNo');
        })
    });
</script>
</body>
</html>