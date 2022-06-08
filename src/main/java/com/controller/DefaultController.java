package com.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Front 페이지가 세팅되기 전 Default 및 개발 테스트 페이지들을 호출하기 위한 Controller 입니다. 개발 후 삭제하면 됩니다.
 * **/

@Slf4j
@Controller
public class DefaultController {
    private ModelAndView VIEW;

    @GetMapping("/")
    public ModelAndView BasicHome() {
        VIEW = new ModelAndView("/home");
        return VIEW;
    }

    @GetMapping("/test.do")
    public ModelAndView TestPage() {
        VIEW = new ModelAndView("/test");
        return VIEW;
    }

    @GetMapping("/error.do")
    public ModelAndView ErrorPage() {
        VIEW = new ModelAndView("/error/error");
        return VIEW;
    }

    @GetMapping("/recover.do")
    public ModelAndView RecoverPage() {
        VIEW = new ModelAndView("/error/recover");
        return VIEW;
    }

    @GetMapping("/module/kakaoMap.do")
    public ModelAndView KakaoMap() {
        VIEW = new ModelAndView("/test/kakao_map");
        return VIEW;
    }

    @GetMapping("/module/kakaoLogin.do")
    public ModelAndView KakaoLogin() {
        VIEW = new ModelAndView("/test/kakao_login");
        return VIEW;
    }

    @GetMapping("/module/kakaoShare.do")
    public ModelAndView KakaoShare() {
        VIEW = new ModelAndView("/test/kakao_share");
        return VIEW;
    }

    @GetMapping("/module/smartEditor.do")
    public ModelAndView SmartEditor() {
        VIEW = new ModelAndView("/test/smart_editor");
        return VIEW;
    }
}
