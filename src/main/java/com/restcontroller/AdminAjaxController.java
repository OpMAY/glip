package com.restcontroller;

import com.google.gson.Gson;
import com.model.admin.auth.request.AdminLoginRequest;
import com.model.admin.exhibition.request.*;
import com.model.admin.product.request.AdminProductActiveSwitchRequest;
import com.model.admin.product.request.AdminProductDeleteRequest;
import com.model.admin.product.request.ProductEditRequest;
import com.model.admin.product.request.ProductMakeRequest;
import com.model.admin.user.request.AdminUserSuspendRequest;
import com.model.admin.user.request.AdminUserUnSuspendRequest;
import com.model.common.MFile;
import com.response.DefaultRes;
import com.response.StatusCode;
import com.service.ExhibitionService;
import com.service.ProductService;
import com.service.UserService;
import com.util.Constant;
import com.util.FileUploadUtility;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Slf4j
@RestController
@RequestMapping("/admin")
public class AdminAjaxController {
    /* Service AutoWired */

    @Autowired
    private UserService userService;

    @Autowired
    private ExhibitionService exhibitionService;

    @Autowired
    private ProductService productService;

    @Autowired
    private FileUploadUtility fileUploadUtility;
    /* Service AutoWired END */

    @PostMapping("/login")
    public ResponseEntity AdminLogin(@RequestBody AdminLoginRequest request, HttpSession session) {
        if (request.getId().equals("admin") && request.getPassword().equals("admin")) {
            // AUTH SUCCESS -> SESSION SET
            session.removeAttribute("adminLogin");
            session.setAttribute("adminLogin", request.getId());
            return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
        } else {
            // AUTH FAIL
            return new ResponseEntity(DefaultRes.res(StatusCode.BAD_REQUEST), HttpStatus.OK);
        }
    }

    @PostMapping("/logout")
    public ResponseEntity AdminLogout(HttpSession session) {
        // SESSION REMOVE
        session.removeAttribute("adminLogin");
        return new ResponseEntity(DefaultRes.res(StatusCode.OK), HttpStatus.OK);
    }

    @GetMapping("/user/detail")
    public ResponseEntity GetAdminUserDetailData(@RequestParam("no") int user_no) {
        return userService.getAdminUserDetailData(user_no);
    }

    @PostMapping("/user/suspend")
    public ResponseEntity SuspendUser(@RequestBody AdminUserSuspendRequest request) {
        return userService.suspendUser(request);
    }

    @PostMapping("/user/unsuspend")
    public ResponseEntity UnSuspendUser(@RequestBody AdminUserUnSuspendRequest request) {
        return userService.unsuspendUser(request);
    }

    @PostMapping("/exhibition/active")
    public ResponseEntity SwitchExhibitionActiveStatus(@RequestBody AdminExhibitionActiveSwitchRequest request) {
        return exhibitionService.switchExhibitionActiveStatus(request);
    }

    @PostMapping("/exhibition/delete")
    public ResponseEntity DeleteExhibition(@RequestBody AdminExhibitionDeleteRequest request) {
        return exhibitionService.deleteExhibition(request);
    }

    @PostMapping("/exhibition/reject")
    public ResponseEntity RejectExhibition(@RequestBody AdminExhibitionRejectRequest request) {
        return exhibitionService.rejectExhibition(request);
    }

    @PostMapping("/exhibition/agree")
    public ResponseEntity AgreeExhibition(@RequestBody AdminExhibitionAgreeRequest request) {
        return exhibitionService.agreeExhibition(request);
    }

    @GetMapping("/exhibition/product/list")
    public ResponseEntity GetProductListForExhibition(@RequestParam("no") int exhibition_no) {
        return exhibitionService.getProductListForExhibition(exhibition_no);
    }

    @PostMapping("/exhibition/product/select")
    public ResponseEntity GetSelectedProductInfoForExhibition(@RequestBody AdminExhibitionProductSelectRequest request) {
        return exhibitionService.getSelectedProductInfoForExhibition(request);
    }

    @PostMapping("/exhibition/edit")
    public ResponseEntity EditExhibition(HttpServletRequest servletRequest, @RequestParam("exhibition") String body) {
        ExhibitionEditRequest request = new Gson().fromJson(body, ExhibitionEditRequest.class);
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) servletRequest;
        Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
        for (String key : fileMap.keySet()) {
            if (key.equals("main_img")) {
                if (!fileMap.get(key).isEmpty()) {
                    MFile mfile = fileUploadUtility.uploadFile(fileMap.get(key), Constant.CDN_PATH.EXHIBITION);
                    request.setImg(mfile.getUrl());
                }
            }
        }
        return exhibitionService.editExhibition(request);
    }

    @PostMapping("/product/active")
    public ResponseEntity SwitchProductActiveStatus(@RequestBody AdminProductActiveSwitchRequest request) {
        return productService.switchProductActiveStatus(request);
    }

    @PostMapping("/product/delete")
    public ResponseEntity DeleteProduct(@RequestBody AdminProductDeleteRequest request) {
        return productService.deleteProduct(request);
    }

    @PostMapping("/product/edit")
    public ResponseEntity EditProduct(HttpServletRequest servletRequest, @RequestParam("product") String body) {
        ProductEditRequest request = new Gson().fromJson(body, ProductEditRequest.class);
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) servletRequest;
        Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
        List<String> imgList = request.getImg();
        for (String key : fileMap.keySet()) {
            if (key.contains("product_img")) {
                if (!fileMap.get(key).isEmpty()) {
                    MFile mfile = fileUploadUtility.uploadFile(fileMap.get(key), Constant.CDN_PATH.PRODUCT);
                    imgList.set(Integer.parseInt(key.split("product_img")[1]), mfile.getUrl());
                }
            }
        }
        // Remove All Null Elements
        imgList.removeIf(Objects::isNull);
        request.setImg(imgList);
        log.info("request : " + request);
        return productService.editProduct(request);
    }

    @PostMapping("/product/make")
    public ResponseEntity MakeProduct(HttpServletRequest servletRequest, @RequestParam("product") String body) {
        ProductMakeRequest request = new Gson().fromJson(body, ProductMakeRequest.class);
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) servletRequest;
        Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
        List<String> imgList = request.getImg();
        for (String key : fileMap.keySet()) {
            if (key.contains("product_img")) {
                if (!fileMap.get(key).isEmpty()) {
                    MFile mfile = fileUploadUtility.uploadFile(fileMap.get(key), Constant.CDN_PATH.PRODUCT);
                    imgList.set(Integer.parseInt(key.split("product_img")[1]), mfile.getUrl());
                }
            }
        }
        // Remove All Null Elements
        imgList.removeIf(Objects::isNull);
        request.setImg(imgList);
        log.info("request : " + request);
        return productService.makeProduct(request);
    }

}
