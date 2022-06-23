<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>Glip Admin Theme</title>
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
                  <li class="breadcrumb-item active">전시 요청</li>
                </ol>
              </div>
              <h4 class="page-title">전시 요청</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <h4 class="header-title">On Display in Exhibition</h4>
                  <p class="text-muted font-13 mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum
                    earum eveniet impedit! Ea eligendi et explicabo harum hic nihil non porro possimus praesentium
                    voluptatem. Atque dicta nostrum nulla tenetur voluptatibus.</p>
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
                      <th>요청 상태</th>
                      <th>상세 보기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>아폴론의 화살</td>
                      <td>사진(Photography)</td>
                      <td>2022.12.12</td>
                      <td>2022.12.24</td>
                      <td>유병준</td>
                      <td>2022.11.12</td>
                      <td>승인 대기</td>
                      <td>
                        <button type="button"
                                onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>아폴론의 화살</td>
                      <td>사진(Photography)</td>
                      <td>2022.12.12</td>
                      <td>2022.12.24</td>
                      <td>유병준</td>
                      <td>2022.11.12</td>
                      <td>반려</td>
                      <td>
                        <button type="button"
                                onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
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
            id="exhibitionDisabledModalLabel">Exhibition Disabled</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to disable the 'Apollon's Arrow' display?</p>
        <p class="small">(Exhibition information is not exposed to the service when deactivated.)</p>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">Cancel
          </button>
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-danger waves-effect waves-light">Freeze
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
            id="exhibitionAbledModalLabel">Exhibition Activation</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to activate the ‘Arrow of Apollo’ exhibition?</p>
        <p class="small">(Exhibition information is exposed on the service when activated.)</p>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">Cancel
          </button>
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-success waves-effect waves-light">UnFreeze
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
    });
</script>
</body>
</html>