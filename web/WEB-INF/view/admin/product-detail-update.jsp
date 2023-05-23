<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Glip 관리자 - 상품 수정</title>
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

    <!-- SMART EDITOR -->
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote.css">
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote-custom.css">
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
                                    <li class="breadcrumb-item active">수정</li>
                                </ol>
                            </div>
                            <h4 class="page-title">상품 수정</h4>
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
                                        </div>
                                        <div class="col-3 offset-5 d-flex justify-content-end">
                                            <button type="button" data-bs-product-no="${product.no}" data-bs-toggle="modal" data-bs-target="#product-edit-confirm-modal"
                                                    class="btn btn-dark waves-effect waves-light top-right-button last">수정
                                            </button>
                                            <button type="button" data-bs-product-no="${product.no}" data-bs-toggle="modal" data-bs-target="#product-edit-cancel-modal"
                                                    class="btn btn-secondary waves-effect waves-light top-right-button">상품으로
                                            </button>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <label class="form-label">상품 이름</label>
                                                <input type="text"
                                                       name="product_name"
                                                       placeholder="상품 이름을 입력하세요."
                                                       value="${product.title}"
                                                       class="form-control">
                                            </div>
                                            <span>상품 이미지</span>
                                            <div class="row row-cols-5 image-item-wrapper">
                                                <div class="col image-item"
                                                     data-count="1">
                                                    <div class="mb-3">
                                                        <input type="file"
                                                               data-plugins="dropify"
                                                               data-max-file-size="5M"
                                                                <c:if test="${product.img.size() >= 1}">
                                                                    data-default-file="${product.img[0].replace("\"", "")}"
                                                                </c:if>
                                                        />
                                                    </div>
                                                </div>
                                                <div class="col image-item"
                                                     data-count="2">
                                                    <div class="mb-3">
                                                        <input type="file"
                                                               data-plugins="dropify"
                                                               data-max-file-size="5M"
                                                                <c:if test="${product.img.size() >= 2}">
                                                                    data-default-file="${product.img[1].replace("\"", "")}"
                                                                </c:if>
                                                        />
                                                    </div>
                                                </div>
                                                <div class="col image-item"
                                                     data-count="3">
                                                    <div class="mb-3">
                                                        <input type="file"
                                                               data-plugins="dropify"
                                                               data-max-file-size="5M"
                                                                <c:if test="${product.img.size() >= 3}">
                                                                    data-default-file="${product.img[2].replace("\"", "")}"
                                                                </c:if>
                                                        />
                                                    </div>
                                                </div>
                                                <div class="col image-item"
                                                     data-count="4">
                                                    <div class="mb-3">
                                                        <input type="file"
                                                               data-plugins="dropify"
                                                               data-max-file-size="5M"
                                                                <c:if test="${product.img.size() >= 4}">
                                                                    data-default-file="${product.img[3].replace("\"", "")}"
                                                                </c:if>
                                                        />
                                                    </div>
                                                </div>
                                                <div class="col image-item"
                                                     data-count="5">
                                                    <div class="mb-3">
                                                        <input type="file"
                                                               data-plugins="dropify"
                                                               data-max-file-size="5M"
                                                                <c:if test="${product.img.size() >= 5}">
                                                                    data-default-file="${product.img[4].replace("\"", "")}"
                                                                </c:if>
                                                        />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">간단 설명</label>
                                                <input type="text"
                                                       name="simple_desc"
                                                       placeholder="간단 설명을 입력하세요."
                                                       value="${product.subtitle}"
                                                       class="form-control">
                                            </div>
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">카테고리</label>
                                                        <select id="product_category"
                                                                class="form-select">
                                                            <option selected>${product.category}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">가격</label>
                                                        <input type="text"
                                                               name="product_price"
                                                               pattern=".{4,}"
                                                               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');autoCalculateFunction();"
                                                               placeholder="상품 가격을 입력하세요."
                                                               value="<fmt:formatNumber value="${product.price}"/>"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">할인율</label>
                                                        <input type="text"
                                                               pattern="^[0-9][0-9]?$|^100$"
                                                               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');autoCalculateFunction();"
                                                               name="product_sale_rate"
                                                               placeholder="상품 할인율을 입력하세요."
                                                               value="${product.sales}"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="mb-3">
                                                        <label class="form-label">판매가</label>
                                                        <input type="text"
                                                               name="product_sale"
                                                               placeholder="판매가는 자동으로 계산됩니다."
                                                               disabled
                                                               value="<fmt:formatNumber value="${product.price * (100 - product.sales) / 100}"/>"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label d-flex">판매 링크</label>
                                                <input type="text"
                                                       name="sell_link"
                                                       placeholder="판매 링크를 입력하세요."
                                                       value="${product.link}"
                                                       class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">상세 설명</label>
                                                <div id="summernote">${product.details}</div>
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
<div class="modal fade"
     id="product-edit-confirm-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="productEditConfirmModalLabel">상품 수정</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>상품을 수정하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">취소
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">수정
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<div class="modal fade"
     id="product-edit-cancel-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title"
                    id="productEditCancelModalLabel">상품 수정 취소</h4>
                <button type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p>상품을 수정을 취소하시겠어요?</p>
                <div class="mt-3">
                    <div class="btn-container mt-3 text-end">
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-dark waves-effect waves-light"
                                type="button">닫기
                        </button>
                        <button data-bs-dismiss="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">취소
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
<!-- common js -->
<script src="../../../resources/admin/assets/js/common.js"></script>
<!-- server js -->
<script src="../../../resources/admin/assets/js/server.js"></script>
<!-- SMART EDITOR js -->
<script src="../../../resources/js/module/summernote/summernote.js"></script>
<script src="../../../resources/js/module/summernote/summernote-kr.js"></script>

<script>
    $(document).ready(function () {
        /** Image Item Control */
        // let $image_items = $('.image-item-wrapper .image-item');
        // console.log($('.image-item-wrapper .image-item label span:last-child'));
        // $('.image-item-wrapper').on('click', 'div.image-item label span:last-child', function (e) {
        //     console.log(e);
        //     /** Delete Item*/
        //     $(e.currentTarget).closest('.image-item').remove();
        //     updateImageWrapperUI();
        // });
        /** Image Item Control End*/
        /** Modal Event Listener */
        $('#product-edit-confirm-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                // TODO input valid check
                const formData = new FormData();
                const data = {};
                data.no = $button.data().bsProductNo;
                data.title = $('input[name=product_name]').val();
                data.subtitle = $('input[name=simple_desc]').val();
                data.category = $('select[id=product_category] option:selected').val();
                data.price = unCommaFunction($('input[name=product_price]').val());
                data.sales = $('input[name=product_sale_rate]').val() * 1;
                data.link = $('input[name=sell_link]').val();
                data.details = $('#summernote').summernote('code');
                data.img = [];
                $('input[data-plugins=dropify]').each((index, element) => {
                    if(element.files.length === 1) {
                        formData.append('product_img' + index, element.files[0]);
                        data.img[index] = 'product_img' + index;
                    } else if ($(element).data().defaultFile !== undefined) {
                        data.img[index] = $(element).data().defaultFile;
                    } else {
                        data.img[index] = null;
                    }
                })
                formData.append('product', JSON.stringify(data));

                formData.forEach((value, key) => {
                    console.log(key);
                    console.log(value);
                })

                fileUploadFetchFunction('/admin/product/edit', formData, function (res) {
                    if(res.status === 200) {
                        alert('수정이 완료되었습니다.');
                        window.location.replace('/admin/product/detail.do?no=' + $button.data().bsProductNo);
                    }
                })
            });
        });

        $('#product-edit-cancel-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                window.location.replace('/admin/product/detail.do?no=' + $button.data().bsProductNo);
            });
        });

        $('#product-edit-cancel-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        $('#product-edit-confirm-modal').on('hidden.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').off('click');
        });

        // $('.image-item-add-wrapper button').click(addImageItem);

        $('#summernote').summernote({
            placeholder: '내용을 입력해주세요.',
            tabsize: 2,
            height: 600,
            lang: 'ko-KR',
            focus: true, // 활성화 시 input focus
            disableResizeEditor: true, // Size 조절
            toolbar: [ // Toolbar Set
                ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['insert', ['picture', 'link']],
                ['view', ['help']]
            ],
            maxUploadSize: 1024 * 1024 * 10,
            maxUploadOnError: () => {
                alert('사진 용량이 너무 큽니다. 다른 사진을 이용해주세요.\n파일 당 최대 업로드 용량 : 10MB');
                $('[data-dismiss="modal"]').click();
            },
            /**
             * Description : 스마트에디터 파일 업로더 Ajax
             * Prerequisite : Summernote Smarteditor가 존재 해야한다.
             * Parameter : deferred -> smarteditor 내무에 존재하는 변수
             * Return : Non
             * Date : 2021-07-12
             * Version : 1
             * */
            imageUploader: (deferred, file) => {
                let formData = new FormData(); // HTML5
                formData.append("file", file);
                fileUploadFetchFunction('/smarteditor/image/upload', formData, function (res) {
                    if (res.status === 200) {
                        deferred.resolve(res.data.url);
                    }
                })
            }
        });
    });

    const autoCalculateFunction = () => {
        const price = $('input[name=product_price]').val();
        const sales = $('input[name=product_sale_rate]').val();
        const numRegex = /[0-9]/g;
        const salesRegex = /^[0-9][0-9]?$|^100$/g;
        let result = ''
        if (numRegex.test(unCommaFunction(price)) && salesRegex.test(sales) ) {
            // 천 원 단위 이상, 숫자 정규식 모두 통과 시 계산
            result = unCommaFunction(price) * 1 * (100 - sales * 1) / 100;
            console.log('in ; ', result);
        }
        $('input[name=product_sale]').val(commaFunction(result));
        $('input[name=product_price]').val(commaFunction(price));
    }

</script>
</body>
</html>