<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

  <meta charset="utf-8"/>
  <title>Glip 관리자 대시보드</title>
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
  <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>


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
                  <li class="breadcrumb-item active">Dashboard</li>
                </ol>
              </div>
              <h4 class="page-title">Dashboard</h4>
            </div>
          </div>
        </div>
        <!-- end page title -->

        <div class="row">
          <div class="col-md-12 col-xl-12">
            <div class="card">
              <div class="card-body">
                <div id="carouselExampleCaption"
                     class="carousel slide"
                     data-bs-ride="carousel">
                  <div class="carousel-inner"
                       role="listbox">
                    <div class="carousel-item background active"
                         data-url="../../../resources/admin/assets/images/small/img-1.jpg">
                      <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-white">Move Link</h3>
                        <p data-url="https://www.naver.com/">https://www.naver.com/</p>
                      </div>
                    </div>
                    <div class="carousel-item background"
                         data-url="../../../resources/admin/assets/images/small/img-1.jpg">
                      <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-white">Move Link2</h3>
                        <p data-url="https://www.naver.com/">https://www.naver.com/</p>
                      </div>
                    </div>
                    <div class="carousel-item background"
                         data-url="../../../resources/admin/assets/images/small/img-1.jpg">
                      <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-white">Move Link3</h3>
                        <p data-url="https://www.naver.com/">https://www.naver.com/</p>
                      </div>
                    </div>
                  </div>
                  <a class="carousel-control-prev"
                     href="#carouselExampleCaption"
                     role="button"
                     data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"
                          aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </a>
                  <a class="carousel-control-next"
                     href="#carouselExampleCaption"
                     role="button"
                     data-bs-slide="next">
                    <span class="carousel-control-next-icon"
                          aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </a>
                  <button type="button"
                          onclick="window.location.href='/admin/banner.do'"
                          class="position-absolute btn btn-primary waves-effect waves-light">
                    배너 관리
                  </button>
                </div>
              </div>
            </div> <!-- end card-->
          </div> <!-- end col -->
        </div>
        <!-- end row -->

        <div class="row">
          <div class="col-xl-6">
            <div class="card">
              <div class="card-body dashboard-table-cards">
                <div class="card-widgets">
                  <a href="/admin/user/registered.do"><h5 class="my-0">더 보기</h5></a>
                </div>
                <h4 class="header-title mb-0">사용자 신규 가입</h4>

                <div id="cardCollpase5"
                     class="collapse pt-3 show">
                  <div class="table-responsive">
                    <table class="table table-hover table-centered mb-0">
                      <thead>
                      <tr>
                        <th>이름</th>
                        <th>Email(ID)</th>
                        <th>연락처</th>
                        <th>가입 일자</th>
                        <th>상세 보기</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>유병준</td>
                        <td>asszxc@naver.com</td>
                        <td>010-9431-1977</td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>asszxc@naver.com</td>
                        <td>010-9431-1977</td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>asszxc@naver.com</td>
                        <td>010-9431-1977</td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>asszxc@naver.com</td>
                        <td>010-9431-1977</td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>asszxc@naver.com</td>
                        <td>010-9431-1977</td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      </tbody>
                    </table>
                  </div> <!-- end table responsive-->
                </div> <!-- collapsed end -->
              </div> <!-- end card-body -->
            </div> <!-- end card-->
          </div> <!-- end col -->
          <div class="col-xl-6">
            <div class="card">
              <div class="card-body dashboard-table-cards">
                <div class="card-widgets">
                  <a href="/admin/exhibition/request.do"><h5 class="my-0">더보기</h5></a>
                </div>
                <h4 class="header-title mb-0">전시 요청</h4>

                <div id="cardCollpase6"
                     class="collapse pt-3 show">
                  <div class="table-responsive">
                    <table class="table table-hover table-centered mb-0">
                      <thead>
                      <tr>
                        <th>작성자</th>
                        <th>전시 명</th>
                        <th>상태</th>
                        <th>요청 일자</th>
                        <th>상세 보기</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td><span class="badge bg-secondary">대기</span></td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td><span class="badge bg-primary">전시 중</span></td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td><span class="badge bg-danger">반려</span></td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td><span class="badge bg-warning">정지</span></td>
                        <td>2022.12.22</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      </tbody>
                    </table>
                  </div> <!-- end table responsive-->
                </div> <!-- collapsed end -->
              </div> <!-- end card-body -->
            </div> <!-- end card-->
          </div> <!-- end col -->
          <div class="col-xl-6">
            <div class="card">
              <div class="card-body dashboard-table-cards">
                <div class="card-widgets">
                  <a href="/admin/exhibition.do?type=process"><h5 class="my-0">더보기</h5></a>
                </div>
                <h4 class="header-title mb-0">전시 중</h4>

                <div id="cardCollpase7"
                     class="collapse pt-3 show">
                  <div class="table-responsive">
                    <table class="table table-hover table-centered mb-0">
                      <thead>
                      <tr>
                        <th>작성자</th>
                        <th>전시명</th>
                        <th>시작 일자</th>
                        <th>종료 일자</th>
                        <th>스크랩 수</th>
                        <th>조회 수</th>
                        <th>상세 보기</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>2022.12.12</td>
                        <td>2022.12.24</td>
                        <td>23</td>
                        <td>12</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>2022.12.12</td>
                        <td>2022.12.24</td>
                        <td>23</td>
                        <td>12</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>2022.12.12</td>
                        <td>2022.12.24</td>
                        <td>23</td>
                        <td>12</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>2022.12.12</td>
                        <td>2022.12.24</td>
                        <td>23</td>
                        <td>12</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>유병준</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>2022.12.12</td>
                        <td>2022.12.24</td>
                        <td>23</td>
                        <td>12</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      </tbody>
                    </table>
                  </div> <!-- end table responsive-->
                </div> <!-- collapsed end -->
              </div> <!-- end card-body -->
            </div> <!-- end card-->
          </div> <!-- end col -->
          <div class="col-xl-6">
            <div class="card">
              <div class="card-body dashboard-table-cards">
                <div class="card-widgets">
                  <a href="/admin/product.do"><h5 class="my-0">더보기</h5></a>
                </div>
                <h4 class="header-title mb-0">등록 상품</h4>

                <div class="pt-3">
                  <div class="table-responsive">
                    <table class="table table-hover table-centered mb-0">
                      <thead>
                      <tr>
                        <th>상품 명</th>
                        <th>가격</th>
                        <th>전시 명</th>
                        <th>스크랩 수</th>
                        <th>조회 수</th>
                        <th>상세 보기</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>물감</td>
                        <td>23,000원</td>
                        <td>서울 도시 건축 비엔날레</td>
                        <td>30</td>
                        <td>15</td>
                        <td>
                          <button type="button"
                                  class="btn btn-sm btn-info waves-effect waves-light">
                            상세보기
                          </button>
                        </td>
                      </tr>
                      </tbody>
                    </table>
                  </div> <!-- end table responsive-->
                </div> <!-- collapsed end -->
              </div> <!-- end card-body -->
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

<!-- Vendor js -->
<script src="../../../resources/admin/assets/js/vendor.min.js"></script>

<!-- Plugins js-->
<script src="../../../resources/admin/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
<script src="../../../resources/admin/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../../resources/admin/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>

<!-- Dashboard 2 init -->
<script src="../../../resources/admin/assets/js/pages/dashboard-2.init.js"></script>

<!-- App js-->
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

<!-- Datatables init -->
<script src="../../../resources/admin/assets/js/pages/datatables.init.js"></script>

<!-- Common js -->
<script src="../../../resources/admin/assets/js/common.js"></script>

<script>
  $(document).ready(function () {
      /** Carousel Initialize*/
      let carousel = $('#carouselExampleCaption');
      if (carousel.length > 0) {
          carousel.find('.carousel-item').each(function (i, e) {
              $(e).css('background-image', 'url(' + $(e).data('url') + ')')
              $(e).find('.carousel-caption p').click(function (e) {
                  window.open(this.dataset.url);
              });
          });
          console.log('$carousel init');
      }
  });
</script>
</body>
</html>