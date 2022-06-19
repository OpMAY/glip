package com.restcontroller;

import com.model.admin.auth.request.AdminLoginRequest;
import com.response.DefaultRes;
import com.response.StatusCode;
import com.util.FileUploadUtility;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Slf4j
@RestController
@RequestMapping("/admin")
public class AdminAjaxController {
    /* Service AutoWired */

    @Autowired
    private FileUploadUtility fileUploadUtility;
    /* Service AutoWired END */

    @PostMapping("/login")
    public ResponseEntity AdminLogin(@RequestBody AdminLoginRequest request, HttpSession session) {
        if (request.getId().equals("root") && request.getPassword().equals("root")) {
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

}
