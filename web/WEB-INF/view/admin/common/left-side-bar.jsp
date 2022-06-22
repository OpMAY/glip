<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ========== Left Sidebar Start ========== -->
<div class="left-side-menu">

    <div class="h-100"
         data-simplebar>

        <!--- Sidemenu -->
        <div id="sidebar-menu">

            <ul id="side-menu">

                <li class="menu-title">Home</li>

                <li>
                    <a href="/admin/dashboard.do"
                       data-bs-toggle="collapse">
                        <i data-feather="airplay"></i>
                        <span> Dashboard </span>
                    </a>
                </li>

                <li class="menu-title mt-2">회원 관리</li>

                <li>
                    <a href="/admin/user/registered.do">
                        <i data-feather="users"></i>
                        <span class="badge bg-success rounded-pill float-end">4</span>
                        <span> 가입 회원 </span>
                    </a>
                </li>

                <li>
                    <a href="/admin/user/suspended.do">
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
                                            <a href="/admin/exhibition/process.do">전시 중</a>
                                        </li>
                                        <li>
                                            <a href="/admin/exhibition/planned.do">전시 예정</a>
                                        </li>
                                        <li>
                                            <a href="/admin/exhibition/finished.do">전시 종료</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="/admin/exhibition/request.do">
                                    <span> 전시 요청 </span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/exhibition/register.do">
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
                                <a href="/admin/product.do">상품 목록</a>
                            </li>
                            <li>
                                <a href="/admin/product/register.do">상품 등록</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="menu-title mt-2">웹 관리</li>

                <li>
                    <a href="/admin/category.do">
                        <i data-feather="grid"></i>
                        <span> 카테고리 관리 </span>
                    </a>
                </li>
                <li>
                    <a href="/admin/banner.do">
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