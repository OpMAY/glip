package com.controller;

import com.model.basic.exhibition.ExhibitionStatus;
import com.service.ExhibitionService;
import com.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.UnsatisfiedServletRequestParameterException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {
    private ModelAndView VIEW;
    /* Service AutoWired */
    @Autowired
    private UserService userService;

    @Autowired
    private ExhibitionService exhibitionService;
    /* Service AutoWired END */

    @GetMapping("/login.do")
    public ModelAndView AuthPage() {
        return new ModelAndView("/admin/auth-login");
    }

    @GetMapping("/dashboard.do")
    public ModelAndView DashboardPage() {
        VIEW = new ModelAndView("/admin/dashboard-2");
        // TODO Dashboard Data
        return VIEW;
    }

    @GetMapping("/user/registered.do")
    public ModelAndView UserRegisteredPage() {
        VIEW = new ModelAndView("/admin/join-user-list");
        // TODO User Registered Page Data
        VIEW.addObject("user_list", userService.getUserListPage(false));
        return VIEW;
    }

    @GetMapping("/user/suspended.do")
    public ModelAndView UserSuspendedPage() {
        VIEW = new ModelAndView("/admin/freeze-user-list");
        // TODO User Suspended Page Data
        VIEW.addObject("user_list", userService.getUserListPage(true));
        return VIEW;
    }

    @GetMapping("/exhibition/planned.do")
    public ModelAndView ExhibitionOnListPlannedPage() {
        VIEW = new ModelAndView("/admin/exhibition-on-list");
        VIEW.addObject("typeText", ExhibitionTypeText("planned"));
        VIEW.addObject("exhibition_list", exhibitionService.getAdminExhibitionListPage(ExhibitionStatus.PLANNED));
        return VIEW;
    }

    @GetMapping("/exhibition/process.do")
    public ModelAndView ExhibitionOnListProcessPage() {
        VIEW = new ModelAndView("/admin/exhibition-on-list");
        VIEW.addObject("typeText", ExhibitionTypeText("process"));
        VIEW.addObject("exhibition_list", exhibitionService.getAdminExhibitionListPage(ExhibitionStatus.ON_EXHIBITION));
        return VIEW;
    }

    @GetMapping("/exhibition/finished.do")
    public ModelAndView ExhibitionOnListFinishedPage() {
        VIEW = new ModelAndView("/admin/exhibition-on-list");
        VIEW.addObject("typeText", ExhibitionTypeText("finished"));
        VIEW.addObject("exhibition_list", exhibitionService.getAdminExhibitionListPage(ExhibitionStatus.FINISHED));
        return VIEW;
    }

    @GetMapping("/exhibition/request.do")
    public ModelAndView ExhibitionRequestListPage() {
        VIEW = new ModelAndView("/admin/exhibition-request-list");
        // TODO Exhibition Request list Data
        VIEW.addObject("exhibition_list", exhibitionService.getAdminExhibitionRequestListPage());
        return VIEW;
    }

    @GetMapping("/exhibition/detail.do")
    public ModelAndView ExhibitionDetailPage(@RequestParam("no") int no) {
        VIEW = new ModelAndView("/admin/exhibition-detail");
        // TODO Exhibition Detail Data
        VIEW.addObject("exhibition", exhibitionService.getAdminExhibitionDetailPage(no));
        return VIEW;
    }

    @GetMapping("/exhibition/register.do")
    public ModelAndView ExhibitionRegisterPage() {
        return new ModelAndView("/admin/exhibition-detail-register");
    }

    @GetMapping("/exhibition/update.do")
    public ModelAndView ExhibitionUpdatePage(@RequestParam("no") int no) {
        VIEW =  new ModelAndView("/admin/exhibition-detail-update");
        // TODO Exhibition Detail Data
        VIEW.addObject("exhibition", exhibitionService.getAdminExhibitionDetailPage(no));
        return VIEW;
    }

    @GetMapping("/product.do")
    public ModelAndView ProductOnPage() {
        VIEW = new ModelAndView("/admin/product-on-display");
        // TODO product data
        return VIEW;
    }

    @GetMapping("/product/detail.do")
    public ModelAndView ProductDetailPage(@RequestParam("no") int no) {
        VIEW = new ModelAndView("/admin/product-detail");
        // TODO Product detail data
        return VIEW;
    }

    @GetMapping("/product/register.do")
    public ModelAndView ProductRegisterPage() {
        return new ModelAndView("/admin/product-detail-register");
    }

    @GetMapping("/product/update.do")
    public ModelAndView ProductUpdatePage(@RequestParam("no") int no) {
        VIEW = new ModelAndView("/admin/product-detail-update");
        // TODO Product Detail data
        return VIEW;
    }

    @GetMapping("/banner.do")
    public ModelAndView BannerManagePage() {
        VIEW = new ModelAndView("/admin/banner-manage");
        // TODO Banner List data
        return VIEW;
    }

    @GetMapping("/category.do")
    public ModelAndView CategoryManagePage() {
        VIEW = new ModelAndView("/admin/category-manage");
        // TODO Default category data
        return VIEW;
    }

    private String ExhibitionTypeText(String type) {
        switch (type) {
            case "process" : return "전시 중";
            case "planned" : return "전시 예정";
            case "finished" : return "전시 종료";
            // TODO default Throw Exception
            default: return "";
        }
    }
}
