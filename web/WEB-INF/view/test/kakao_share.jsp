<%--
  Created by IntelliJ IDEA.
  User: kevin
  Date: 2022-06-09
  Time: 오전 1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">

    <title>Kakao Link</title>
</head>
<body>
<div class="container">
    <button type="button"
            id="kakao-link"
            data-kakao-id="77972"
            class="btn btn-primary">카카오톡 공유
    </button>
</div>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="../../../resources/js/module/kakao.js"></script>
<script src="../../../resources/js/module/kakao-link.js"></script>
<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
-->
<script>
    $(document).ready(function () {
        // JAVASCRIPT 키 이용
        let kakaoLink = new KakaoLink('a519b69307a8e39c9447dbc701192329', Kakao, {
            container: '#kakao-link', // 카카오 공유하기 btn element ID
            templateId: $('#kakao-link').data('kakaoId'),// TEMPLATE ID 기본 세팅 값
            // 디자인 페이지에서 해당 값들에 맞게 가지고오면 됩니다 (제목, 사진 등)
            templateArgs: {
                'thumbnail': 'https://sustable.s3.ap-northeast-2.amazonaws.com/product/store/552f37e3-b69e-40aa-9c35-25add3155786_초하루-메인-썸네일.jpg',
                'title': '[초하루] 제주감귤 발효식처 3종',
                'desc': '내면의 눈으로 삶의 면역에 그만의 내거티브를 더해 환상적인 판타지를 창조하는 아티스트 제임스 진 그가 그려내는 세밀하고 몽환적인 세계 속 BTS를 만나보세요.',
                'share': '999',
                'views': '999',
                'logo': 'https://sustable.kr/resources/assets/images/icon/favicon.png',
                'profile_title': 'GLIP Project',
                'no': '3',
            },
            callback: () => {
                // 콜백 함수 (Share 수 늘리기 등 가능, 초기 SET X)
                kakaoLink.linkSendCallback({no: 3, type: 'exhibition'});
            }
        });
    });
</script>
</body>
</html>