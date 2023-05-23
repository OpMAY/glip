<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Glip Admin - 전시 관리 (${typeText})</title>
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">전시 목록</a></li>
                                    <li class="breadcrumb-item active">${typeText}</li>
                                </ol>
                            </div>
                            <h4 class="page-title">총 ${exhibition_list.size()}개의 ${typeText} 전시회</h4>
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
                                        <tr>
                                            <th>번호</th>
                                            <th>전시 명</th>
                                            <th>카테고리</th>
                                            <th>시작 일자</th>
                                            <th>종료 일자</th>
                                            <th>작성자(닉네임)</th>
                                            <th>등록 일자</th>
                                            <th>스크랩 수</th>
                                            <th>조회 수</th>
                                            <th <c:if test="${typeText == '전시 종료'}">data-orderable="false"</c:if>><c:if test="${typeText != '전시 종료'}">전시 상태</c:if></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="i" begin="1" end="${exhibition_list.size()}">
                                            <tr>
                                                <td>${i}</td>
                                                <td>${exhibition_list[i-1].title}</td>
                                                <td>${exhibition_list[i-1].category}</td>
                                                <td>${exhibition_list[i-1].start_date}</td>
                                                <td>${exhibition_list[i-1].end_date}</td>
                                                <td>${exhibition_list[i-1].user_nickname}</td>
                                                <td>${exhibition_list[i-1].reg_date}</td>
                                                <td>${exhibition_list[i-1].scrap_count}</td>
                                                <td>${exhibition_list[i-1].views}</td>
                                                <td>
                                                    <c:if test="${typeText != '전시 종료'}">
                                                        <c:choose>
                                                            <c:when test="${exhibition_list[i-1].active_status == true}">
                                                                <button type="button"
                                                                        class="btn btn-sm btn-danger waves-effect waves-light"
                                                                        data-bs-target="#exhibition-disabled-modal"
                                                                        data-bs-exhibition-title="${exhibition_list[i-1].title}"
                                                                        data-bs-exhibition-no="${exhibition_list[i-1].no}"
                                                                        data-bs-toggle="modal">
                                                                    비활성화
                                                                </button>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <button type="button"
                                                                        data-bs-target="#exhibition-abled-modal"
                                                                        data-bs-exhibition-title="${exhibition_list[i-1].title}"
                                                                        data-bs-exhibition-no="${exhibition_list[i-1].no}"
                                                                        data-bs-toggle="modal"
                                                                        class="btn btn-sm btn-primary waves-effect waves-light">
                                                                    활성화
                                                                </button>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:if>
                                                    <button type="button"
                                                            data-bs-exhibition-no="${exhibition_list[i-1].no}"
                                                            class="btn btn-sm btn-info waves-effect waves-light exhibition-detail">
                                                        상세보기
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
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
                    id="exhibitionDisabledModalLabel">전시 비활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-name">아폴론의 회상</span>' 전시를 비활성화 하시겠어요?</p>
                <p class="small">(비활성화 시 서비스에 전시 정보가 노출되지 않습니다.)</p>
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
                    id="exhibitionAbledModalLabel">전시 활성화</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>'<span id="modal-name">아폴론의 회상</span>' 전시를 활성화 하시겠어요?</p>
                <p class="small">(활성화 시 서비스에 전시 정보가 노출됩니다.)</p>
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
<script src="../../../resources/admin/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<!-- third party js ends -->
<script src="../../../resources/admin/assets/js/common.js"></script>

<script src="../../../resources/admin/assets/js/server.js"></script>
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
            let $name = $button.data().bsExhibitionTitle;
            $modal.find('#modal-name').text($name);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/active', 'POST', data, exhibitionActiveStatusFunction);
            });
        });
        $('#exhibition-disabled-modal').on('hidden.bs.modal', function (event) {
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
            let $name = $button.data().bsExhibitionTitle;
            $modal.find('#modal-name').text($name);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                const data = {"exhibition_no": $button.data().bsExhibitionNo};
                normalFetchFunction('/admin/exhibition/active', 'POST', data, exhibitionActiveStatusFunction);
            });
        });
        $('#exhibition-abled-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        $('.exhibition-detail').on('click', function () {
            window.location.href = '/admin/exhibition/detail.do?no=' + $(this).data().bsExhibitionNo;
        })
    });

    const exhibitionActiveStatusFunction = (res) => {
        if (res.status === 200) {
            alert('상태가 변경되었습니다.');
            window.location.reload();
        }
    }
</script>
</body>
</html>