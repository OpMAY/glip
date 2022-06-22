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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">User Manage</a></li>
                  <li class="breadcrumb-item active">정지 회원</li>
                </ol>
              </div>
              <h4 class="page-title">총 30명의 정지 회원</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-9">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  <p class="text-muted font-13 mb-4">표에서 정보를 볼 사용자를 클릭하세요.</p>
                  <table class="table dt-responsive nowrap w-100 alternative-page-datatable">
                    <thead>
                    <tr>
                      <th>번호</th>
                      <th>이름</th>
                      <th>닉네임</th>
                      <th>이메일</th>
                      <th>연락처</th>
                      <th>가입 일자</th>
                    </tr>
                    </thead>


                    <tbody>
                    <tr class="selectable-tr" data-key="1">
                      <td>1</td>
                      <td>유병준</td>
                      <td>유병준짱짱</td>
                      <td>asszxc@naver.com</td>
                      <td>010-9431-1977</td>
                      <td>2022.12.22</td>
                    </tr>
                    <tr class="selectable-tr" data-key="2">
                      <td>2</td>
                      <td>유병준</td>
                      <td>유병준짱짱</td>
                      <td>asszxc@naver.com</td>
                      <td>010-9431-1977</td>
                      <td>2022.12.22</td>
                    </tr>
                    <tr class="selectable-tr" data-key="3">
                      <td>3</td>
                      <td>유병준</td>
                      <td>유병준짱짱</td>
                      <td>asszxc@naver.com</td>
                      <td>010-9431-1977</td>
                      <td>2022.12.22</td>
                    </tr>
                    <tr class="selectable-tr" data-key="4">
                      <td>4</td>
                      <td>유병준</td>
                      <td>유병준짱짱</td>
                      <td>asszxc@naver.com</td>
                      <td>010-9431-1977</td>
                      <td>2022.12.22</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div> <!-- end card-body-->
            </div> <!-- end card-->
          </div> <!-- end col -->

          <div class="col-lg-3">
            <div class="card">
              <div class="card-body">
                <div class="d-flex align-items-start mb-3">
                  <img class="d-flex me-3 rounded-circle avatar-lg"
                       src="../../../resources/admin/assets/images/users/user-8.jpg"
                       alt="Generic placeholder image">
                  <div class="w-100">
                    <h4 class="mt-0 mb-1">유병준짱짱</h4>
                    <p class="text-muted">asszxc@naver.com</p>

                    <a href="javascript: void(0);"
                       data-bs-target="#unfreeze-modal"
                       data-bs-user-no="1"
                       data-bs-toggle="modal"
                       class="btn- btn-xs btn-warning text-white">정지 해제</a>
                  </div>
                </div>

                <h5 class="mb-3 mt-4 text-uppercase bg-light p-2"><i class="mdi mdi-account-circle me-1"></i> 상세 정보 </h5>
                <div class="container p-0">
                  <div class="row">
                    <div class="col-6">
                      <h4 class="font-13 text-muted text-uppercase mb-1">이름 :</h4>
                      <p class="mb-3">유병준</p>
                    </div>
                    <div class="col-6">
                      <h4 class="font-13 text-muted text-uppercase mb-1">성별 :</h4>
                      <p class="mb-3">남자</p>
                    </div>
                    <div class="col-6">
                      <h4 class="font-13 text-muted text-uppercase mb-1">연락처 :</h4>
                      <p class="mb-3">010-4529-9453</p>
                    </div>
                    <div class="col-6">
                      <h4 class="font-13 text-muted text-uppercase mb-1">가입 일자 :</h4>
                      <p class="mb-0">2022.12.12</p>
                    </div>
                    <div class="col-6">
                      <h4 class="font-13 text-muted text-uppercase mb-1">마지막 로그인 일자 :</h4>
                      <p class="mb-0">2022.12.11 16:00</p>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- end card-->
          </div>
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
     id="unfreeze-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="myCenterModalLabel">User Unfreeze</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>'유병준'님의 서비스 이용 정지를 해제하시겠어요?</p>
        <div class="mt-3">
          <div class="btn-container mt-3 text-end">
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-dark waves-effect waves-light"
                    type="button">취소
            </button>
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-success waves-effect waves-light">해제
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
                      $('.selectable-tr.tr-clicked').removeClass('tr-clicked');
                      console.log($(this).data('key'));
                      $(this).addClass('tr-clicked');
                      $('#freezeButton').data('bs-user-no', $(this).data('key'));
                      console.log($('#freezeButton').data('bs-user-no'));
                      // TODO FETCH USER DETAIL
                    });
                });
            }
        });
        /** Modal Event Listener */
        $('#unfreeze-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#unfreeze-modal').on('hide.bs.modal', function (event) {
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