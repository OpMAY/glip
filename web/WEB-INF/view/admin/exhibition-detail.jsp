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
        href="../../resources/admin/assets/images/favicon.ico">

  <!-- App css -->
  <link href="../../resources/admin/assets/css/config/default/bootstrap.min.css"
        rel="stylesheet"
        type="text/css"
        id="bs-default-stylesheet"/>
  <link href="../../resources/admin/assets/css/config/default/app.min.css"
        rel="stylesheet"
        type="text/css"
        id="app-default-stylesheet"/>

  <link href="../../resources/admin/assets/css/config/default/bootstrap-dark.min.css"
        rel="stylesheet"
        type="text/css"
        id="bs-dark-stylesheet"/>
  <link href="../../resources/admin/assets/css/config/default/app-dark.min.css"
        rel="stylesheet"
        type="text/css"
        id="app-dark-stylesheet"/>

  <!-- icons -->
  <link href="../../resources/admin/assets/css/icons.min.css"
        rel="stylesheet"
        type="text/css"/>
  <!-- custom -->
  <link href="../../resources/admin/assets/css/custom.css"
        rel="stylesheet"
        type="text/css"/>

  <!-- third party css -->
  <link href="../../resources/admin/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/datatables.net-select-bs5/css//select.bootstrap5.min.css"
        rel="stylesheet"
        type="text/css"/>
  <!-- third party css end -->

  <!-- third party css dropfy -->
  <link href="../../resources/admin/assets/libs/dropzone/min/dropzone.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/dropify/css/dropify.min.css"
        rel="stylesheet"
        type="text/css"/>
  <!-- third party css -->

  <!-- third party css datepicker -->
  <link href="../../resources/admin/assets/libs/spectrum-colorpicker2/spectrum.min.css"
        rel="stylesheet"
        type="text/css">
  <link href="../../resources/admin/assets/libs/flatpickr/flatpickr.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
        rel="stylesheet"
        type="text/css"/>
  <!-- third party css datepicker end-->
  <!-- third party css form -->
  <link href="../../resources/admin/assets/libs/mohithg-switchery/switchery.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/multiselect/css/multi-select.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/select2/css/select2.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/selectize/css/selectize.bootstrap3.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="../../resources/admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css"
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
  <div class="navbar-custom">
    <div class="container-fluid">

      <!-- LOGO -->
      <div class="logo-box">
        <a href="index.html"
           class="logo logo-dark text-center">
          <span class="logo-sm">
            <img src="../../resources/admin/assets/images/logo-sm.png"
                 alt=""
                 height="22">
            <!-- <span class="logo-lg-text-light">UBold</span> -->
          </span>
          <span class="logo-lg">
            <img src="../../resources/admin/assets/images/logo-dark.png"
                 alt=""
                 height="20">
            <!-- <span class="logo-lg-text-light">U</span> -->
          </span>
        </a>

        <a href="index.html"
           class="logo logo-light text-center">
          <span class="logo-sm">
            <img src="../../resources/admin/assets/images/logo-sm.png"
                 alt=""
                 height="22">
          </span>
          <span class="logo-lg">
            <img src="../../resources/admin/assets/images/logo-light.png"
                 alt=""
                 height="20">
          </span>
        </a>
      </div>

      <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
        <li>
          <button class="button-menu-mobile waves-effect waves-light">
            <i class="fe-menu"></i>
          </button>
        </li>

        <li>
          <!-- Mobile menu toggle (Horizontal Layout)-->
          <a class="navbar-toggle nav-link"
             data-bs-toggle="collapse"
             data-bs-target="#topnav-menu-content">
            <div class="lines">
              <span></span>
              <span></span>
              <span></span>
            </div>
          </a>
          <!-- End mobile menu toggle-->
        </li>
      </ul>
      <div class="clearfix"></div>
    </div>
  </div>
  <!-- end Topbar -->

  <!-- ========== Left Sidebar Start ========== -->
  <div class="left-side-menu">

    <div class="h-100"
         data-simplebar>

      <!-- User box -->
      <div class="user-box text-center">
        <img src="../../resources/admin/assets/images/users/user-1.jpg"
             alt="user-img"
             title="Mat Helme"
             class="rounded-circle avatar-md">
        <div class="dropdown">
          <a href="javascript: void(0);"
             class="text-dark dropdown-toggle h5 mt-2 mb-1 d-block"
             data-bs-toggle="dropdown">Geneva Kennedy</a>
          <div class="dropdown-menu user-pro-dropdown">

            <!-- item-->
            <a href="javascript:void(0);"
               class="dropdown-item notify-item">
              <i class="fe-user me-1"></i>
              <span>My Account</span>
            </a>

            <!-- item-->
            <a href="javascript:void(0);"
               class="dropdown-item notify-item">
              <i class="fe-settings me-1"></i>
              <span>Settings</span>
            </a>

            <!-- item-->
            <a href="javascript:void(0);"
               class="dropdown-item notify-item">
              <i class="fe-lock me-1"></i>
              <span>Lock Screen</span>
            </a>

            <!-- item-->
            <a href="javascript:void(0);"
               class="dropdown-item notify-item">
              <i class="fe-log-out me-1"></i>
              <span>Logout</span>
            </a>

          </div>
        </div>
        <p class="text-muted">Admin Head</p>
      </div>

      <!--- Sidemenu -->
      <div id="sidebar-menu">

        <ul id="side-menu">

          <li class="menu-title">Home</li>

          <li>
            <a href="#sidebarDashboards"
               data-bs-toggle="collapse">
              <i data-feather="airplay"></i>
              <span> Dashboards </span>
            </a>
          </li>

          <li class="menu-title mt-2">회원 관리</li>

          <li>
            <a href="javascript:void(0);">
              <i data-feather="users"></i>
              <span class="badge bg-success rounded-pill float-end">4</span>
              <span> 가입 회원 </span>
            </a>
          </li>

          <li>
            <a href="javascript:void(0);">
              <i data-feather="users"></i>
              <span class="badge bg-danger rounded-pill float-end">20</span>
              <span> 정지 회원 </span>
            </a>
          </li>

          <li class="menu-title mt-2">서비스 관리</li>

          <li>
            <a href="#exhibitionMultilevel"
               data-bs-toggle="collapse">
              <i data-feather="share-2"></i>
              <span> 전시 관리 </span>
              <span class="menu-arrow"></span>
            </a>
            <div class="collapse"
                 id="exhibitionMultilevel">
              <ul class="nav-second-level">
                <li>
                  <a href="#exhibitionMultilevel2"
                     data-bs-toggle="collapse">
                    전시 목록 <span class="menu-arrow"></span>
                  </a>
                  <div class="collapse"
                       id="exhibitionMultilevel2">
                    <ul class="nav-second-level">
                      <li>
                        <a href="javascript: void(0);">전시 중</a>
                      </li>
                      <li>
                        <a href="javascript: void(0);">전시 예정</a>
                      </li>
                      <li>
                        <a href="javascript: void(0);">전시 종료</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <span> 전시 요청 </span>
                  </a>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <span> 전시 등록 </span>
                  </a>
                </li>
              </ul>
            </div>
          </li>

          <li>
            <a href="#sidebarEcommerce"
               data-bs-toggle="collapse">
              <i data-feather="shopping-cart"></i>
              <span> 상품 관리 </span>
              <span class="menu-arrow"></span>
            </a>
            <div class="collapse"
                 id="sidebarEcommerce">
              <ul class="nav-second-level">
                <li>
                  <a href="javascript:void(0);">상품 목록</a>
                </li>
                <li>
                  <a href="javascript:void(0);">상품 등록</a>
                </li>
              </ul>
            </div>
          </li>

          <li class="menu-title mt-2">웹 관리</li>

          <li>
            <a href="javascript:void(0);">
              <i data-feather="grid"></i>
              <span> 카테고리 관리 </span>
            </a>
          </li>
          <li>
            <a href="javascript:void(0);">
              <i data-feather="layout"></i>
              <span> 배너 관리 </span>
            </a>
          </li>

          <li class="menu-title mt-2">연결</li>

          <li>
            <a href="javascript:void(0);">
              <i data-feather="aperture"></i>
              <span> 채널톡 연결 </span>
            </a>
          </li>
          <li>
            <a href="javascript:void(0);">
              <i data-feather="aperture"></i>
              <span> Notion 연결 </span>
            </a>
          </li>
        </ul>

      </div>
      <!-- End Sidebar -->

      <div class="clearfix"></div>

    </div>
    <!-- Sidebar -left -->

  </div>
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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Exhibitions</a></li>
                  <li class="breadcrumb-item active">Exhibition Manage</li>
                </ol>
              </div>
              <h4 class="page-title">Exhibition Manage</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->


        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="exhibition-detail">
                  <h4 class="header-title">Exhibition Manage</h4>
                  <p class="text-muted font-13 mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum
                    earum eveniet impedit! Ea eligendi et explicabo harum hic nihil non porro possimus praesentium
                    voluptatem. Atque dicta nostrum nulla tenetur voluptatibus.</p>
                  <div class="row">
                    <div class="col-12">
                      <div class="mb-3">
                        <label class="form-label">Title</label>
                        <input type="text"
                               name="title"
                               readonly
                               placeholder="Input Title"
                               class="form-control readonly">
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Main Image</label>
                        <div class="background"
                             style="padding-top: 30%; background-image:
                        url('../../resources/admin/assets/images/small/img-2.jpg')"></div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Simple Description</label>
                        <input type="text"
                               readonly
                               name="simple_desc"
                               placeholder="Input Simple Description"
                               class="form-control readonly">
                      </div>
                      <div class="row">
                        <div class="col-4">
                          <div class="mb-3">
                            <label class="form-label">Start Date And Finish Date</label>
                            <input type="text"
                                   readonly
                                   class="form-control readonly"
                                   placeholder="2018-10-03 to 2018-10-10">
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">Start Date</label>
                            <input type="text"
                                   readonly
                                   class="form-control readonly"
                                   placeholder="16:21">
                          </div>
                        </div>
                        <div class="col-auto">
                          <div class="mb-3">
                            <label class="form-label">End Date</label>
                            <input type="text"
                                   readonly
                                   class="form-control readonly"
                                   placeholder="16:21">
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col d-grid">
                          <div class="mb-3">
                            <label class="form-label">Exhibition Address</label>
                            <div class="input-group">
                              <input type="text"
                                     name="exhibition-address"
                                     readonly
                                     placeholder="Input Exhibition Address"
                                     class="form-control readonly">
                            </div>
                          </div>
                        </div>
                        <div class="col-4">
                          <div class="mb-3">
                            <label class="form-label">Exhibition Address Detail</label>
                            <input type="text"
                                   name="exhibition-address-detail"
                                   readonly
                                   placeholder="Input Exhibition Address Detail"
                                   class="form-control readonly">
                          </div>
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Address Map</label>
                        <div class="w-100 background"
                             style="padding-top: 40%;
                             background-image:url('../../resources/admin/assets/images/bg-auth.jpg');"></div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label">Description</label>
                        <textarea class="form-control readonly"
                                  name="description"
                                  readonly
                                  id="example-textarea"
                                  placeholder="Input Description"
                                  rows="5"></textarea>
                      </div>
                      <div class="mb-3">
                        <label class="form-label d-flex">Homepage
                          Url<span onclick="javascript:void(0);"
                                   class="cursor-pointer badge bg-dark float-end my-auto ms-1">링크
                            이동</span></label>
                        <input type="text"
                               name="homepage-url"
                               readonly
                               placeholder="Input Homepage Url"
                               class="form-control readonly">
                      </div>
                      <div class="row join-writer-wrapper">
                        <div class="col-12 join-writer-inner">
                          <div class="row join-writer-item">
                            <div class="col-auto d-grid">
                              <div class="mb-3">
                                <label class="form-label d-flex">
                                  참여 작가
                                  <span onclick="javascript:void(0);"
                                        class="cursor-pointer badge bg-dark float-end my-auto ms-1">Move</span>
                                </label>
                                <input type="text"
                                       name="writer"
                                       readonly
                                       placeholder="Input Enter Writer"
                                       class="form-control readonly">
                              </div>
                            </div>
                            <div class="col-6">
                              <label class="form-label empty-label"></label>
                              <input type="text"
                                     name="writer-url"
                                     readonly
                                     placeholder="Input Enter Writer Url"
                                     class="form-control readonly">
                            </div>
                          </div>
                          <div class="row join-writer-item">
                            <div class="col-auto d-grid">
                              <div class="mb-3">
                                <label class="form-label d-flex">
                                  참여 작가
                                  <span onclick="javascript:void(0);"
                                        class="cursor-pointer badge bg-dark float-end my-auto ms-1">Move</span>
                                </label>
                                <input type="text"
                                       name="writer"
                                       readonly
                                       placeholder="Input Enter Writer"
                                       class="form-control readonly">
                              </div>
                            </div>
                            <div class="col-6">
                              <label class="form-label empty-label"></label>
                              <input type="text"
                                     name="writer-url"
                                     readonly
                                     placeholder="Input Enter Writer Url"
                                     class="form-control readonly">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-3">
                          <div class="mb-3">
                            <label class="form-label">Exhibition Type</label>
                            <input type="text"
                                   name="exhibition-type"
                                   readonly
                                   placeholder="Input Enter Exhibition Type"
                                   class="form-control readonly">
                          </div>
                        </div>
                        <div class="col-6 d-grid">
                          <div class="mb-3">
                            <label class="form-label">Recommend Hashtag Other Type</label>
                            <input type="text"
                                   readonly
                                   class="form-control readonly"
                                   value="awesome,neat">
                          </div>
                        </div>
                      </div>
                      <div class="mb-3">
                        <label class="form-label d-flex">Detail Description</label>
                        <textarea class="form-control readonly"
                                  readonly
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
                                  <a href="javascript: void(0);"
                                     class="btn btn-info btn-xs waves-effect waves-light"><i class="mdi mdi-details"></i></a>
                                </div>
                                <div class="bg-light">
                                  <img src="../../resources/admin/assets/images/products/product-1.png"
                                       alt="product-pic"
                                       class="img-fluid">
                                </div>

                                <div class="product-info">
                                  <div class="row align-items-center">
                                    <div class="col">
                                      <h5 class="font-16 mt-0 sp-line-1"><a href="javascript:void(0);"
                                                                            class="text-dark">Adirondack Chair</a></h5>
                                      <div class="text-warning mb-2 font-13">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                      </div>
                                      <h5 class="m-0"><span class="text-muted"> Stocks : 98 pcs</span></h5>
                                    </div>
                                    <div class="col-auto">
                                      <div class="product-price-tag">
                                        $39
                                      </div>
                                    </div>
                                  </div> <!-- end row -->
                                </div> <!-- end product info-->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-12 text-end">
                      <button type="button"
                              data-bs-toggle="modal"
                              data-bs-target="#exhibition-inactive-modal"
                              data-bs-exhibition-no="1"
                              class="btn btn-secondary waves-effect waves-light">비활성화
                      </button>
                      <button type="button"
                              data-bs-toggle="modal"
                              data-bs-target="#exhibition-agree-modal"
                              data-bs-exhibition-no="1"
                              class="btn btn-success waves-effect waves-light">전시 승인
                      </button>
                      <button type="button"
                              data-bs-toggle="modal"
                              data-bs-target="#exhibition-reject-modal"
                              class="btn btn-danger waves-effect waves-light">전시 반려
                      </button>
                      <button type="button"
                              class="btn btn-dark waves-effect waves-light">수정하기
                      </button>
                      <button type="button"
                              data-bs-toggle="modal"
                              data-bs-target="#exhibition-delete-modal"
                              data-bs-exhibition-no="1"
                              class="btn btn-danger waves-effect waves-light">삭제
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
    <footer class="footer">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <script>document.write(new Date().getFullYear())</script> &copy; Glip theme by <a href="">Okiwi</a>
          </div>
          <div class="col-md-6">
            <div class="text-md-end footer-links d-none d-sm-block">
              <a href="javascript:void(0);">About Us</a>
              <a href="javascript:void(0);">Help</a>
              <a href="javascript:void(0);">Contact Us</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
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
            id="exhibitionDeleteModalLabel">Exhibition Delete</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
        <div class="mt-3">
          <div class="btn-container mt-3 text-end">
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-dark waves-effect waves-light"
                    type="button">Cancel
            </button>
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-danger waves-effect waves-light">Delete
            </button>
          </div>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-agree-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="exhibitionAgreeModalLabel">Exhibition Agree</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
        <div class="mt-3">
          <div class="btn-container mt-3 text-end">
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-dark waves-effect waves-light"
                    type="button">Cancel
            </button>
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-success waves-effect waves-light">Agree
            </button>
          </div>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>
<div class="modal fade"
     id="exhibition-reject-modal"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h4 class="modal-title"
            id="exhibitionRejectModalLabel">Exhibition Reject</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
        <div class="mb-3">
          <label class="form-label">반려 사유</label>
          <input type="text"
                 name="rejected-cause"
                 placeholder="Input Rejected Cause"
                 class="form-control">
        </div>
        <div class="mt-3">
          <div class="btn-container mt-3 text-end">
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-dark waves-effect waves-light"
                    type="button">Cancel
            </button>
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-danger waves-effect waves-light">Reject
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
            id="exhibitionInActiveModalLabel">Exhibition InActive</h4>
        <button type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"></button>
      </div>
      <div class="modal-body p-4">
        <p>Would you like to cancel service suspension for 'Yoo Byung-jun'?</p>
        <div class="mt-3">
          <div class="btn-container mt-3 text-end">
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-dark waves-effect waves-light"
                    type="button">Cancel
            </button>
            <button data-bs-dismiss="modal"
                    class="btn btn-sm btn-secondary waves-effect waves-light">InActive
            </button>
          </div>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</div>

<!-- Vendor js -->
<script src="../../resources/admin/assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="../../resources/admin/assets/js/app.min.js"></script>

<!-- Custom App js -->
<script src="../../resources/admin/assets/js/app_custom.js"></script>

<!-- third party js -->
<script src="../../resources/admin/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="../../resources/admin/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="../../resources/admin/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="../../resources/admin/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<!-- third party js ends -->
<!-- third party js dropfy -->
<!-- Plugins js -->
<script src="../../resources/admin/assets/libs/dropzone/min/dropzone.min.js"></script>
<script src="../../resources/admin/assets/libs/dropify/js/dropify.min.js"></script>

<!-- Init js-->
<script src="../../resources/admin/assets/js/pages/form-fileuploads.init.js"></script>
<!-- third party js dropfy end -->
<!--third party js datepicker -->
<!-- Plugins js-->
<script src="../../resources/admin/assets/libs/flatpickr/flatpickr.min.js"></script>
<script src="../../resources/admin/assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
<script src="../../resources/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
<script src="../../resources/admin/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<!-- Init js-->
<script src="../../resources/admin/assets/js/pages/form-pickers.init.js"></script>
<!--third party js datepicker end -->
<!-- third party js form -->
<script src="../../resources/admin/assets/libs/selectize/js/standalone/selectize.min.js"></script>
<script src="../../resources/admin/assets/libs/mohithg-switchery/switchery.min.js"></script>
<script src="../../resources/admin/assets/libs/multiselect/js/jquery.multi-select.js"></script>
<script src="../../resources/admin/assets/libs/select2/js/select2.min.js"></script>
<script src="../../resources/admin/assets/libs/jquery-mockjax/jquery.mockjax.min.js"></script>
<script src="../../resources/admin/assets/libs/devbridge-autocomplete/jquery.autocomplete.min.js"></script>
<script src="../../resources/admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="../../resources/admin/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<!-- third party js form end -->
<!-- Init js-->
<script src="../../resources/admin/assets/js/pages/form-advanced.init.js"></script>
<script>
    $(document).ready(function () {
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
        $('#exhibition-agree-modal').on('show.bs.modal', function (event) {
            // do something...
            let $button = $(event.relatedTarget)
            console.log($button.data());
            let $modal = $(this);
            $modal.find('.btn-container button:nth-child(2)').click(function (e) {
                console.log('click event');
                $(this).off('click');
            });
        });
        $('#exhibition-reject-modal').on('show.bs.modal', function (event) {
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
    });
</script>
</body>
</html>