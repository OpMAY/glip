<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8"/>
  <title>Glip 관리자 - 배너 관리</title>
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

  <!-- plugin css -->
  <link href="../../../resources/admin/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css"
        rel="stylesheet"
        type="text/css"/>

  <!-- Plugins css -->
  <link href="../../../resources/admin/assets/libs/dropzone/min/dropzone.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../../resources/admin/assets/libs/dropify/css/dropify.min.css"
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

  <!-- Plugins css -->
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
  <!-- Plugins css -->
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
  <link href="../../../resources/admin/assets/css/custom.css"
        rel="stylesheet"
        type="text/css"/>
  <!-- icons -->
  <link href="../../../resources/admin/assets/css/icons.min.css"
        rel="stylesheet"
        type="text/css"/>
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
                  <li class="breadcrumb-item active">배너 관리</li>
                </ol>
              </div>
              <h4 class="page-title">배너 관리</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="exhibition-detail">
                  <div class="row banner-list">
                    <div class="col-12 banner-item">
                      <div class="mb-3 banner-link-wrapper">
                        <label class="form-label">배너 링크</label>
                        <input type="text"
                               class="form-control mb-2"
                               value="http://www.naver.com/"
                               placeholder="http://example.com/">
                        <input type="file"
                               data-plugins="dropify"
                               data-default-file="../../../resources/admin/assets/images/small/img-2.jpg"/>
                      </div>
                      <div class="mt-3 text-right">
                        <button type="button"
                                class="btn btn-success waves-effect waves-light m-1">
                          저장하기
                        </button>
                        <button type="button"
                                class="btn btn-danger waves-effect waves-light m-1">
                          삭제하기
                        </button>
                      </div>
                    </div>
                    <div class="col-12 banner-item">
                      <div class="mb-3 banner-link-wrapper">
                        <label class="form-label">배너 링크</label>
                        <input type="text"
                               class="form-control mb-2"
                               value="http://www.naver.com/"
                               placeholder="http://example.com/">
                        <input type="file"
                               data-plugins="dropify"
                               data-default-file="../../../resources/admin/assets/images/small/img-2.jpg"/>
                      </div>
                      <div class="mt-3 text-right">
                        <button type="button"
                                class="btn btn-success waves-effect waves-light m-1">
                          저장하기
                        </button>
                        <button type="button"
                                class="btn btn-danger waves-effect waves-light m-1">
                          삭제하기
                        </button>
                      </div>
                    </div>
                    <div class="col-12 banner-item">
                      <div class="mb-3 banner-link-wrapper">
                        <label class="form-label">배너 링크</label>
                        <input type="text"
                               class="form-control mb-2"
                               value="http://www.naver.com/"
                               placeholder="http://example.com/">
                        <input type="file"
                               data-plugins="dropify"
                               data-default-file="../../../resources/admin/assets/images/small/img-2.jpg"/>
                      </div>
                      <div class="mt-3 text-right">
                        <button type="button"
                                class="btn btn-success waves-effect waves-light m-1">
                          저장하기
                        </button>
                        <button type="button"
                                class="btn btn-danger waves-effect waves-light m-1">
                          삭제하기
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-12">
                      <div class="mt-3 text-right">
                        <button type="button"
                                onclick="addBanner();"
                                class="btn btn-success waves-effect waves-light m-1">
                          배너 추가하기
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

<!-- Vendor js -->
<script src="../../../resources/admin/assets/js/vendor.min.js"></script>

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

<script src="../../../resources/admin/assets/libs/selectize/js/standalone/selectize.min.js"></script>
<script src="../../../resources/admin/assets/libs/mohithg-switchery/switchery.min.js"></script>
<script src="../../../resources/admin/assets/libs/multiselect/js/jquery.multi-select.js"></script>
<script src="../../../resources/admin/assets/libs/select2/js/select2.min.js"></script>
<script src="../../../resources/admin/assets/libs/jquery-mockjax/jquery.mockjax.min.js"></script>
<script src="../../../resources/admin/assets/libs/devbridge-autocomplete/jquery.autocomplete.min.js"></script>
<script src="../../../resources/admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="../../../resources/admin/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>

<!-- third party js ends -->

<!-- Datatables init -->
<script src="../../../resources/admin/assets/js/pages/datatables.init.js"></script>

<!-- Init js-->
<script src="../../../resources/admin/assets/js/pages/form-advanced.init.js"></script>

<!-- Plugins js -->
<script src="../../../resources/admin/assets/libs/dropzone/min/dropzone.min.js"></script>
<script src="../../../resources/admin/assets/libs/dropify/js/dropify.min.js"></script>

<!-- Init js-->
<script src="../../../resources/admin/assets/js/pages/form-fileuploads.init.js"></script>

<!-- App js -->
<script src="../../../resources/admin/assets/js/app.min.js"></script>
<script>
    $(document).ready(function () {
        $('.banner-list .banner-item').find('.btn-success').click(function () {
            /*TODO FETCH*/
            let item = this.closest('.banner-item');
        });
        $('.banner-list .banner-item').find('.btn-danger').click(function () {
            /*TODO FETCH*/
            /*TODO ITEM REMOVE*/
            let item = this.closest('.banner-item');
            $(item).remove();
        });
    });

    const addBanner = () => {
        $('.banner-list').append(createBannerItem({}));
        $('.banner-list .banner-item:last-child [data-plugins="dropify"]').dropify();
        $('.banner-list .banner-item:last-child').find('.btn-success').click(function () {
            /*TODO FETCH*/
            let item = this.closest('.banner-item');
        });
        $('.banner-list .banner-item:last-child').find('.btn-danger').click(function () {
            /*TODO ITEM REMOVE*/
            let item = this.closest('.banner-item');
            item.remove();
        });
    }

    const createBannerItem = ({}) => {
        return `<div class="col-12 banner-item">
                <div class="mb-3 banner-link-wrapper">
                  <label class="form-label">배너 링크</label>
                  <input type="text"
                         class="form-control mb-2"
                         placeholder="http://example.com/">
                  <input type="file"
                         data-plugins="dropify"/>
                </div>
                <div class="mt-3 text-right">
                  <button type="button"
                          class="btn btn-success waves-effect waves-light m-1">
                    저장하기
                  </button>
                  <button type="button"
                          class="btn btn-danger waves-effect waves-light m-1">
                    삭제하기
                  </button>
                </div>
              </div>`;
    }
</script>
</body>
</html>