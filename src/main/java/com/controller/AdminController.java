package com.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {
    /* Service AutoWired */

    /* Service AutoWired END */

    @GetMapping("/login.do")
    public ModelAndView AuthPage() {
        return new ModelAndView("/admin/auth-login");
    }

    @GetMapping("/dashboard.do")
    public ModelAndView DashboardPage() {
        return new ModelAndView("/admin/dashboard-2");
    }

    @GetMapping("/user/registered.do")
    public ModelAndView UserRegisteredPage() {
        return new ModelAndView("/admin/join-user-list");
    }

    @GetMapping("/user/suspended.do")
    public ModelAndView UserSuspendedPage() {
        return new ModelAndView("/admin/freeze-user-list");
    }

    @GetMapping("/exhibition.do")
    public ModelAndView ExhibitionOnListPage(@RequestParam("type") String type) {
        return new ModelAndView("/admin/exhibition-on-list");
    }

    @GetMapping("/exhibition/request.do")
    public ModelAndView ExhibitionRequestListPage() {
        return new ModelAndView("/admin/exhibition-request-list");
    }

    @GetMapping("/exhibition/detail.do")
    public ModelAndView ExhibitionDetailPage(@RequestParam("no") int no) {
        return new ModelAndView("/admin/exhibition-detail");
    }

    @GetMapping("/exhibition/register.do")
    public ModelAndView ExhibitionRegisterPage() {
        return new ModelAndView("/admin/exhibition-detail-register");
    }

    @GetMapping("/exhibition/update.do")
    public ModelAndView ExhibitionUpdatePage(@RequestParam("no") int no) {
        return new ModelAndView("/admin/exhibition-detail-update");
    }

    @GetMapping("/product.do")
    public ModelAndView ProductOnPage() {
        return new ModelAndView("/admin/product-on-display");
    }

    @GetMapping("/product/detail.do")
    public ModelAndView ProductDetailPage(@RequestParam("no") int no) {
        return new ModelAndView("/admin/product-detail");
    }

    @GetMapping("/product/register.do")
    public ModelAndView ProductRegisterPage() {
        return new ModelAndView("/admin/product-detail-register");
    }

    @GetMapping("/product/update.do")
    public ModelAndView ProductUpdatePage(@RequestParam("no") int no) {
        return new ModelAndView("/admin/product-detail-update");
    }

    @GetMapping("/banner.do")
    public ModelAndView BannerManagePage() {
        return new ModelAndView("/admin/banner-manage");
    }

    @GetMapping("/category.do")
    public ModelAndView CategoryManagePage() {
        return new ModelAndView("/admin/category-manage");
    }
}
