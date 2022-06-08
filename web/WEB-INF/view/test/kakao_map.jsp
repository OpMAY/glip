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
    <section>
        <div><b>MAP</b></div>
        <div id="kakao-map" style="width: 500px; height: 400px;"></div>
    </section>
</main>
<%-- KAKAO MAP LIBRARY --%>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cde34104a73ef798b0fc9edc7fb3bc5c&libraries=services"></script>
<%-- JQUERY --%>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
<script src="../../../resources/js/module/kakao-map.js"></script>
<script>
    const container = document.querySelector('#kakao-map');
    const address = '서울시 관악구 남부순환로 1892';
    const temp = '서울시 관악구 남부순환로 237길 25';
    const label = '오키위';
    kakaoMapInit(container, address, label);
</script>
</body>
</html>
