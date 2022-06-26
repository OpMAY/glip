<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>[상품 이름] 상품 상세</title>
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">상품 관리</a></li>
                                    <li class="breadcrumb-item active">상품 상세</li>
                                </ol>
                            </div>
                            <h4 class="page-title">상품 상세</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="product-detail">
                                    <div class="row" id="product-detail-header">
                                        <div class="col-4">
                                            <h4 class="header-title">${product.title}</h4>
                                        </div>
                                        <div class="col-3 offset-5 d-flex justify-content-end">
                                            <%--TODO 상품 상태 별 버튼 (활성화 / 비활성화) 변경 --%>
                                            <c:choose>
                                                <c:when test="${product.active_status == true}">
                                                    <button type="button"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#exhibition-inactive-modal"
                                                            data-bs-product-no="${product.no}" data-bs-product-title="${product.title}"
                                                            class="btn btn-secondary waves-effect waves-light top-right-button last">
                                                        비활성화
                                                    </button>
                                                </c:when>
                                                <c:otherwise>
                                                    <button type="button"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#exhibition-active-modal"
                                                            data-bs-product-no="${product.no}" data-bs-product-title="${product.title}"
                                                            class="btn btn-primary waves-effect waves-light">활성화
                                                    </button>
                                                </c:otherwise>
                                            </c:choose>
                                            <button type="button" id="edit-button" data-bs-product-no="${product.no}" data-bs-product-title="${product.title}"
                                                    class="btn btn-dark waves-effect waves-light top-right-button">수정하기
                                            </button>
                                            <button type="button"
                                                    data-bs-toggle="modal"
                                                    data-bs-target="#exhibition-delete-modal"
                                                    data-bs-product-no="${product.no}" data-bs-product-title="${product.title}"
                                                    class="btn btn-danger waves-effect waves-light top-right-button">삭제
                                            </button>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label class="form-label">상품 이미지 (${product.img.size()}/5)</label>
                                            <div class="row row-cols-5">
                                                <c:forEach items="${product.img}" var="img">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <div class="background"
                                                                 style="padding-top: 80%; background-image:
                                                                         url('${img.replaceAll("\"", "")}')"></div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       readonly
                                                       name="simple_desc"
                                                       placeholder="Input Simple Description"
                                                       value="${product.subtitle}"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">카테고리</label>
                                                        <input type="text"
                                                               readonly
                                                               name="product_category"
                                                               placeholder="Input Product Category"
                                                               value="${product.category}"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">가격</label>
                                                        <input type="text"
                                                               readonly
                                                               name="product_price"
                                                               placeholder="Input Product Price"
                                                               value="<fmt:formatNumber value="${product.price}"/>원"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">할인율</label>
                                                        <input type="text"
                                                               readonly
                                                               name="product_sale_rate"
                                                               placeholder="Input Product Sale Rate"
                                                               value="${product.sales}%"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">판매가</label>
                                                        <input type="text"
                                                               readonly
                                                               name="product_sale"
                                                               placeholder="Input Product Sale"
                                                               value="<fmt:formatNumber value="${product.price * (100 - product.sales) / 100}"/>원"
                                                               class="form-control readonly">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">판매 링크<span
                                                        data-sns-url="${product.link}"
                                                        class="cursor-pointer my-auto badge badge-soft-primary ms-1 link-move">링크 확인</span></label>
                                                <input type="text"
                                                       readonly
                                                       name="sell_link"
                                                       placeholder="Input Sell Links"
                                                       value="${product.link}"
                                                       class="form-control readonly">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">상세 설명</label>
                                                <%-- TODO HTML TO TEXTAREA --%>
                                                <div class="smart-editor-content-div">
                                                    ${product.details}
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
                    id="exhibitionDeleteModalLabel">상품 삭제</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title"></span>' 상품을 삭제하시겠어요?</p>
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
     id="exhibition-inactive-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="exhibitionInActiveModalLabel">상품 비활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title"></span>' 상품을 비활성화하시겠어요?</p>
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
                    id="exhibitionActiveModalLabel">상품 활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-title"></span>' 상품을 활성화하시겠어요?</p>
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
<script>
    $(document).ready(function () {
        /** Modal Event Listener */
        $('#exhibition-delete-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('#modal-title').text($button.data().bsProductTitle);
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
            $modal.find('#modal-title').text($button.data().bsProductTitle);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-active-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('#modal-title').text($button.data().bsProductTitle);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
    });

    $('#edit-button').on('click', function () {
        if (confirm('해당 상품을 수정하시겠어요?')) {
            window.location.href = '/admin/product/update.do?no=' + $(this).data('bsProductNo');
        }
    })
</script>
<script>
    $('.link-move').on('click', function () {
        window.open($(this).data('sns-url'), '_blank');
    })

</script>
</body>
</html>