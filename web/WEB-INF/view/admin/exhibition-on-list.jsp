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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Exhibition</a></li>
                  <li class="breadcrumb-item active">On Display</li>
                </ol>
              </div>
              <h4 class="page-title">On Display in Exhibition</h4>
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
                      <th>No</th>
                      <th>Title</th>
                      <th>Category</th>
                      <th>Start Date</th>
                      <th>Finish Date</th>
                      <th>Writer</th>
                      <th>Register Date</th>
                      <th>Scraps</th>
                      <th>Views</th>
                      <th>Action</th>
                    </tr>
                    </thead>


                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-primary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-warning">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-dark">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-secondary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-blue">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-success">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-info">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-primary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-primary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-primary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
                                class="btn btn-sm btn-info waves-effect waves-light">
                          상세보기
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Lorem ipsum</td>
                      <td><span class="badge bg-primary">Photography</span></td>
                      <td>2022.12.12</td>
                      <td>2022.12.12</td>
                      <td>Garrett Winters</td>
                      <td>2022.11.12</td>
                      <td>32</td>
                      <td>16</td>
                      <td>
                        <button type="button"
                                data-bs-target="#exhibition-abled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal"
                                class="btn btn-sm btn-primary waves-effect waves-light">
                          활성화
                        </button>
                        <button type="button"
                                class="btn btn-sm btn-danger waves-effect waves-light"
                                data-bs-target="#exhibition-disabled-modal"
                                data-bs-exhibition-no="1"
                                data-bs-toggle="modal">
                          비활성화
                        </button>
                        <button type="button" onclick="javascript:void(0);"
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