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
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<main>
    <button type="button" class="btn btn-primary" id="kakao-btn">카카오 로그인</button>
</main>
<%-- JQUERY --%>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
<script>

    $(document).on('ready', function () {
        kakaoLoginInit('kakao-btn');
    })
    function kakaoLoginInit(k) {
        /**Kakao*/
        /**href="https://kauth.kakao.com/oauth/authorize?client_id=91a45959f25504f9d6b34be90863e5a4&redirect_uri=http://www.athalal.com/auth/login.do&response_type=code"*/
        let h = 'https://kauth.kakao.com/oauth/authorize';
        let c = '282b5c2ab35c942a331f07c4bc13542d';
        let r = 'http://localhost:8080/login.do';
        let t = 'code';
        document.getElementById(k).href = h + '?' + 'client_id=' + c + '&redirect_uri=' + r + '&response_type=' + t;
    }
</script>
</body>
</html>
