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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">상품 상세</a></li>
                  <li class="breadcrumb-item active">제작</li>
                </ol>
              </div>
              <h4 class="page-title">상품 제작</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="product-detail">
                  <div class="row">
                    <div class="col-12">
                      <div class="mb-3">
                        <label class="form-label">상품 이름</label>
                        <input type="text"
                               name="product_name"
                               placeholder="Input Product Name"
                               class="form-control">
                      </div>
                      <span>상품 이미지</span>
                      <div class="row row-cols-5 image-item-wrapper">
                        <div class="col image-item"
                             data-count="1">
                          <div class="mb-3">
                            <input type="file"
                                   data-plugins="dropify"
                                   data-max-file-size="5M"/>
                          </div>
                        </div>
                        <div class="col image-item"
                             data-count="2">
                          <div class="mb-3">
                            <input type="file"
                                   data-plugins="dropify"
                                   data-max-file-size="5M"/>
                          </div>
                        </div>
                        <div class="col image-item"
                             data-count="3">
                          <div class="mb-3">
                            <input type="file"
                                   data-plugins="dropify"
                                   data-max-file-size="5M"/>
                          </div>
                        </div>
                        <div class="col image-item"
                             data-count="4">
                          <div class="mb-3">
                            <input type="file"
                                   data-plugins="dropify"
                                   data-max-file-size="5M"/>
                          </div>
                        </div>
                        <div class="col image-item"
                             data-count="5">
                          <div class="mb-3">
                            <input type="file"
                                   data-plugins="dropify"
                                   data-max-file-size="5M"/>
                          </div>
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label">간단 설명</label>
                        <input type="text"
                               name="simple_desc"
                               placeholder="Input Simple Description"
                               class="form-control">
                      </div>
                      <div class="row">
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">카테고리</label>
                            <input type="text"
                                   name="product_category"
                                   placeholder="Input Product Category"
                                   class="form-control">
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">가격</label>
                            <input type="text"
                                   name="product_price"
                                   placeholder="Input Product Price"
                                   class="form-control">
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">할인율</label>
                            <input type="text"
                                   name="product_sale_rate"
                                   placeholder="Input Product Sale Rate"
                                   class="form-control">
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">판매가</label>
                            <input type="text"
                                   name="product_sale"
                                   placeholder="Input Product Sale"
                                   class="form-control">
                          </div>
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label d-flex">판매 링크</label>
                        <input type="text"
                               name="sell_link"
                               placeholder="Input Sell Links"
                               class="form-control">
                      </div>
                      <div class="mb-3">
                        <label class="form-label">상세 설명</label>
                        <%-- TODO 스마트 에디터 --%>
                        <textarea class="form-control"
                                  name="description"
                                  id="example-textarea"
                                  placeholder="Input Description"
                                  rows="5"></textarea>
                      </div>
                    </div>
                    <div class="col-12 text-end">
                      <button type="button"
                              class="btn btn-dark waves-effect waves-light">저장하기
                      </button>
                      <button type="button"
                              class="btn btn-primary waves-effect waves-light">목록으로
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
        /** Image Item Control */
        let $image_items = $('.image-item-wrapper .image-item');
        console.log($('.image-item-wrapper .image-item label span:last-child'));
        $('.image-item-wrapper').on('click', 'div.image-item label span:last-child', function (e) {
            console.log(e);
            /** Delete Item*/
            $(e.currentTarget).closest('.image-item').remove();
            updateImageWrapperUI();
        });
        /** Image Item Control End*/
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
        $('#exhibition-active-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });

        $('.image-item-add-wrapper button').click(addImageItem);
    });

    const updateImageWrapperUI = () => {
        $('.image-item-wrapper .image-item').each(function (index, item) {
            $(item).find('.form-label span:first-child').text('Main Image (' + (index + 1) + '/' +
                5 + ')');
        });
    }

    const addImageItem = () => {
        let count = $('.image-item-wrapper .image-item').length;
        console.log(count);
        if (count >= 5) {
            return;
        }
        $('.image-item-wrapper').append(createImageItem({count: (count + 1)}));
        $('[data-plugins="dropify"][data-count="' + (count + 1) + '"]').dropify({
          messages: {
            default: "클릭하거나 이미지를 여기에 드래그해주세요.",
            replace: "수정하려면 클릭하거나 이미지를 여기에 드래그해주세요.",
            remove: "삭제",
            error: "오류가 발생했어요."
          }, error: {fileSize: "파일 크기가 너무 커요 (최대 크기 : 10MB)"}
        });
        $('[data-plugins="dropify"][data-count="' + (count + 1) + '"]').removeAttr('data-count');
    }

    const createImageItem = ({count}) => {
        return `<div class="col image-item"
                     data-count="${count}">
                  <div class="mb-3">
                    <label class="form-label">
                      <span>Main Image (${count}/5)</span>
                      <span class="badge badge-soft-danger cursor-pointer my-auto ms-1">삭제</span>
                    </label>
                    <input type="file"
                           data-count="${count}"
                           data-plugins="dropify"
                           data-max-file-size="5M"
                           data-default-file="../../../resources/admin/assets/images/small/img-2.jpg"/>
                  </div>
                </div>`;
    }
</script>
</body>
</html>