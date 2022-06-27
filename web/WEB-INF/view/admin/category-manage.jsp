<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>Glip 관리자 - 카테고리 관리</title>
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
                  <li class="breadcrumb-item active">카테고리 관리</li>
                </ol>
              </div>
              <h4 class="page-title">카테고리 관리</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="exhibition-detail">
                  <div class="row">
                    <div class="col-12">
                      <div class="row exhibition-category-wrapper">
                        <label class="form-label">전시 카테고리</label>
                        <!-- Exhibition Category Inner -->
                        <div class="row row-cols-6 exhibition-category-inner">
                          <c:forEach items="${category.exhibition_category}" var="category">
                            <div class="col exhibition-category-item"
                                 data-count="${category.order}">
                              <div class="mb-3">
                                <label class="form-label">
                                  <span>${category.name}</span>
                                  <span class="badge badge-soft-danger cursor-pointer my-auto ms-1 me-1">삭제</span>
                                  <span class="badge badge-soft-secondary cursor-pointer my-auto ms-1"
                                        data-bs-category-no="${category.order}"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exhibition-category-update">수정</span>
                                </label>
                                <div class="background"
                                     data-src="bg-auth.jpg"
                                     style="padding-top: 100%;background-image:url('${category.img}');"></div>
                                <span class="mt-1 badge badge-soft-primary order">${category.order}</span>
                              </div>
                            </div>
                          </c:forEach>
                        </div>
                        <!--Exhibition Category Add Wrapper -->
                        <div class="mb-3 category-item-add-wrapper">
                          <button type="button"
                                  data-bs-toggle="modal"
                                  data-bs-target="#exhibition-category-add"
                                  class="btn btn-primary waves-effect waves-light">카테고리 추가하기
                          </button>
                        </div>
                        <!-- Exhibition Category Inner End-->
                      </div>
                      <div class="row recommend-category-wrapper">
                        <div class="col-12">
                          <div class="mb-3">
                            <label class="form-label">추천 해시태그</label>
                            <input type="text"
                                   class="selectize-close-btn"
                                   value="<c:forEach items="${category.recommend_hashtag}" var="hashtag">${hashtag.replaceAll("\"", "")}<c:if test="${hashtag != category.recommend_hashtag[category.recommend_hashtag.size() - 1]}">,</c:if></c:forEach>">
                          </div>
                        </div>
                      </div>
                      <div class="row product-category-wrapper">
                        <div class="col-12">
                          <div>
                            <label class="form-label">상품 카테고리</label>
                            <div class="row row-cols-6 product-category-inner">
                              <c:forEach items="${category.product_category}" var="category">
                                <div class="col product-category-item"
                                     data-category-no="${category.order}">
                                  <label class="form-label d-flex">
                                    <span class="title">${category.name}</span>
                                    <span class="badge my-auto cursor-pointer badge-soft-danger ms-1 me-1">삭제</span>
                                    <span class="badge my-auto cursor-pointer badge-soft-secondary"
                                          data-bs-toggle="modal"
                                          data-bs-target="#product-category-update"
                                          data-category-no="${category.order}">수정</span>
                                  </label>
                                  <div>
                                    <span class="badge cursor-pointer badge-soft-primary">${category.order}</span>
                                  </div>
                                </div>
                              </c:forEach>
                            </div>
                            <div class="mt-3 category-item-add-wrapper">
                              <button type="button"
                                      data-bs-toggle="modal"
                                      data-bs-target="#product-category-add"
                                      class="btn btn-primary waves-effect waves-light">카테고리 추가하기
                              </button>
                            </div>
                          </div>
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
     id="exhibition-category-add"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="exhibitionCategoryAddModalLabel">전시 카테고리 추가</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>전시 카테고리 정보를 입력하세요.</p>
        <div class="mb-3">
          <label class="form-label">메인 이미지를 업로드해주세요.</label>
          <div class="input-group">
            <input type="file"
                   name="category-image"
                   class="d-none">
            <input type="text"
                   name="category-image-name"
                   placeholder="메인 이미지를 업로드해주세요."
                   readonly
                   class="form-control">
            <button class="btn input-group-text btn-dark waves-effect waves-light"
                    type="button"
                    onclick="upload();">업로드
            </button>
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label">카테고리 명을 입력해주세요.</label>
          <input type="text"
                 name="category-name"
                 placeholder="카테고리 명을 입력해주세요."
                 class="form-control">
        </div>
        <div class="mb-3">
          <label class="form-label">노출 순서를 입력해주세요.</label>
          <input type="text"
                 name="category-order"
                 placeholder="노출 순서를 입력해주세요."
                 class="form-control">
        </div>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">취소
          </button>
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-success waves-effect waves-light">추가
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-category-update"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="exhibitionCategoryUpdateModalLabel">전시 카테고리 수정</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>전시 카테고리 정보를 입력하세요.</p>
        <div class="mb-3">
          <label class="form-label">메인 이미지를 업로드해주세요.</label>
          <div class="input-group">
            <input type="file"
                   name="update-category-image"
                   class="d-none">
            <input type="text"
                   name="update-category-image-name"
                   placeholder="메인 이미지를 업로드해주세요."
                   readonly
                   class="form-control">
            <button class="btn input-group-text btn-dark waves-effect waves-light"
                    type="button"
                    onclick="upload();">업로드
            </button>
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label">카테고리 명을 입력해주세요.</label>
          <input type="text"
                 name="update-category-name"
                 placeholder="카테고리 명을 입력해주세요."
                 class="form-control">
        </div>
        <div class="mb-3">
          <label class="form-label">노출 순서를 입력해주세요.</label>
          <input type="text"
                 name="update-category-order"
                 placeholder="노출 순서를 입력해주세요."
                 class="form-control">
        </div>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">취소
          </button>
          <button data-bs-dismiss="modal"
                  data-count="0"
                  class="btn btn-sm btn-success waves-effect waves-light">수정
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="product-category-add"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="productCategoryAddModalLabel">상품 카테고리 추가</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>상품 카테고리 정보를 입력하세요.</p>
        <div class="mb-3">
          <label class="form-label">카테고리 명을 입력해주세요.</label>
          <input type="text"
                 name="product-category-name"
                 placeholder="카테고리 명을 입력해주세요."
                 class="form-control">
        </div>
        <div class="mb-3">
          <label class="form-label">노출 순서를 입력해주세요.</label>
          <input type="text"
                 name="product-category-order"
                 placeholder="노출 순서를 입력해주세요."
                 class="form-control">
        </div>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">취소
          </button>
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-success waves-effect waves-light">추가
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="product-category-update"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="productCategoryUpdateModalLabel">상품 카테고리 수정</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>상품 카테고리 정보를 입력하세요.</p>
        <div class="mb-3">
          <label class="form-label">카테고리 명을 입력해주세요.</label>
          <input type="text"
                 name="update-product-category-name"
                 placeholder="카테고리 명을 입력해주세요."
                 class="form-control">
        </div>
        <div class="mb-3">
          <label class="form-label">노출 순서를 입력해주세요.</label>
          <input type="text"
                 name="update-product-category-order"
                 placeholder="노출 순서를 입력해주세요."
                 class="form-control">
        </div>
        <div class="btn-container mt-3 text-end">
          <button data-bs-dismiss="modal"
                  class="btn btn-sm btn-dark waves-effect waves-light"
                  type="button">취소
          </button>
          <button data-bs-dismiss="modal"
                  data-category-no="0"
                  class="btn btn-sm btn-success waves-effect waves-light">수정
          </button>
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
    /** Exhibition Category */
    let category_image = null;
    const upload = () => {
        $('[name="category-image"]').click();
    }

    function readAddURL(input) {
        let name = input.files[0].name;
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                console.log(e.target)
                category_image = e.target.result;
                $('[name="category-image-name"]').val(name);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    function readUpdateURL(input) {
        let name = input.files[0].name;
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                console.log(e.target)
                category_image = e.target.result;
                $('[name="update-category-image-name"]').val(name);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $('[name="category-image"]').change(function () {
        readAddURL(this);
    });

    $('[name="category-image"]').change(function () {
        readUpdateURL(this);
    });

    $(document).ready(function () {
        $('#exhibition-category-update').on('show.bs.modal', function (event) {
            category_image = null;
            // do something...
            let $button = $(event.relatedTarget);
            let $modal = $(this);
            let category_no = $button.data('bsCategoryNo');
            let exhibition_category = $('.exhibition-category-item[data-count="' + category_no + '"]');
            $('#exhibition-category-update .btn-container button:last-child').attr('data-count', category_no);
            $modal.find('[name="update-category-image-name"]').val(exhibition_category.find('.background').data('src'));
            $modal.find('[name="update-category-name"]').val(exhibition_category.find('.form-label span:first-child').text());
            $modal.find('[name="update-category-order"]').val(exhibition_category.find('.order').text());
        });

        $('#exhibition-category-update .btn-container button:last-child').click(function () {
            updateExhibitionCategoryItem({
                category_image: category_image != null ? category_image : $('.exhibition-category-item[data-count="'
                    + $(this).attr('data-count') + '"]').find('.background').css('background-image').replace(/^url\(['"](.+)['"]\)/, '$1'),
                category_image_name: $('[name="update-category-image-name"]').val(),
                category_name: $('[name="update-category-name"]').val(),
                count: $(this).attr('data-count'),
                order: $('[name="update-category-order"]').val(),
            });
        });
        /** Image Item Control */
        $('#exhibition-category-add .btn-container button:last-child').click(function () {
            /** TODO 전시 카테고리 추가 Fetch*/
            addExhibitionCategoryItem({
                category_image: category_image,
                category_image_name: $('[name="category-image-name"]').val(),
                category_name: $('[name="category-name"]').val(),
                count: $('.exhibition-category-wrapper .exhibition-category-inner .exhibition-category-item').length + 1,
                order: $('[name="category-order"]').val(),
            });
        });
        $('.exhibition-category-wrapper .exhibition-category-inner').on('click', '.exhibition-category-item label span.badge-soft-danger', function (e) {
            console.log(e);
            /** Delete Item*/
            /** TODO Fetch*/
            $(e.currentTarget).closest('.exhibition-category-item').remove();
        });
        /** Image Item Control End*/
    });

    const addExhibitionCategoryItem = ({category_image, category_image_name, category_name, count, order}) => {
        $('.exhibition-category-wrapper .exhibition-category-inner').append(createExhibitionCategoryItem({
            category_image,
            category_name,
            count,
            order,
            category_image_name
        }));
    }
    const updateExhibitionCategoryItem = ({category_image, category_image_name, category_name, count, order}) => {
        /** TODO Fetch*/
        $('.exhibition-category-item[data-count="' + count + '"]').find('.form-label span:first-child').text(category_name);
        $('.exhibition-category-item[data-count="' + count + '"]').find('.background').data('src', category_image_name);
        $('.exhibition-category-item[data-count="' + count + '"]').find('.background').css('background-image', 'url("' + category_image + '")');
        $('.exhibition-category-item[data-count="' + count + '"]').find('.order').text(order);
    }

    const createExhibitionCategoryItem = (category_image, category_image_name, category_name, count, order) => {
        return '<div class="col exhibition-category-item" data-count="' + count + '">' +
               '   <div class="mb-3">' +
               '     <label class="form-label">' +
               '       <span>' + category_name + '</span>' +
               '       <span class="badge badge-soft-danger cursor-pointer my-auto ms-1 me-1">삭제</span>' +
               '       <span class="badge badge-soft-secondary cursor-pointer my-auto ms-1" data-bs-category-no="' + count + '" data-bs-toggle="modal" data-bs-target="#exhibition-category-update">수정</span>' +
               '     </label>' +
               '     <div class="background"' +
               '     data-src="' + category_image_name + '"' +
               '     style="padding-top:20%; background-image:url(\'' + category_image + '\')"></div>' +
               '     <span class="mt-1 badge badge-soft-primary order">' + order + '</span>' +
               '   </div>' +
               '</div>';
    }
    /** Exhibition Category End */

    /** Product Category */
    $(document).ready(function () {
        /** Image Item Control */
        $('#product-category-add .btn-container button:last-child').click(function () {
            /** TODO Fetch*/
            addProductCategoryItem({
                category_no: $('.product-category-item').length + 1,
                title: $('[name="product-category-name"]').val(),
                order: $('[name="product-category-order"]').val(),
            })
        });
        $('.product-category-wrapper .product-category-inner').on('click',
            '.product-category-item .form-label span.badge-soft-danger', function (e) {
                console.log(e);
                /** Delete Item*/
                /** TODO Fetch*/
                $(e.currentTarget).closest('.product-category-item').remove();
            });

        $('#product-category-update').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget);
            let $modal = $(this);
            let category_no = $button.data('categoryNo');
            console.log($button.data(), $modal, category_no);
            let $category_item = $('.product-category-item[data-category-no="' + category_no + '"]');

            $('#product-category-update .btn-container button:last-child').attr('data-category-no', category_no);
            $modal.find('[name="update-product-category-order"]').val($category_item.find('.badge-soft-primary').text());
            $modal.find('[name="update-product-category-name"]').val($category_item.find('.title').text());
        });

        $('#product-category-update .btn-container button:last-child').click(function () {
            /** TODO FETCH*/
            updateProductCategoryItem({
                category_no: $('#product-category-update .btn-container button:last-child').attr('data-category-no'),
                order: $('#product-category-update').find('[name="update-product-category-order"]').val(),
                title: $('#product-category-update').find('[name="update-product-category-name"]').val()
            });
        });
        /** Image Item Control End*/
    });

    const addProductCategoryItem = ({category_no, title, order}) => {
        $('.product-category-wrapper .product-category-inner').append(createProductCategoryItem({
            category_no, title, order
        }));
    }

    const createProductCategoryItem = ({category_no, title, order}) => {
        return `<div class="col product-category-item" data-category-no="${category_no}">
                  <label class="form-label d-flex">
                    <span class="title">${title}</span>
                    <span class="badge my-auto cursor-pointer badge-soft-danger ms-1 me-1" data-category-no="${category_no}">삭제</span>
                    <span class="badge my-auto cursor-pointer badge-soft-secondary" data-bs-toggle="modal" data-bs-target="#product-category-update" data-category-no="${category_no}">수정</span>
                  </label>
                  <div>
                    <span class="badge cursor-pointer badge-soft-primary">${order}</span>
                  </div>
                </div>`;
    }

    const updateProductCategoryItem = ({category_no, title, order}) => {
        $('.product-category-item[data-category-no="' + category_no + '"]').find('.title').text(title);
        $('.product-category-item[data-category-no="' + category_no + '"]').find('.badge-soft-primary').text(order);
    }
    /** Product Category End */
</script>
</body>
</html>