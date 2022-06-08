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
    <link rel="stylesheet" href="../../../resources/css/module/kakao-map.css">

    <title>Kakao Map</title>
    <style>
        #map {
            position: relative;
            overflow: hidden;
        }

        .map-origin-position {
            cursor: pointer;
            z-index: 2;
            font-size: 14px;
            font-weight: 400;
            line-height: 20px;
            position: absolute;
            bottom: 8px;
            right: 8px;
            padding: 4px 8px;
            border-radius: 4px;
            background-color: red;
            color: white;
        }

        .map-overlay-container {
            transition: bottom 0.5s;
            cursor: pointer;
            left: 0;
            bottom: -200px;
            z-index: 3;
            position: absolute;
            background-color: rgba(255, 255, 255, 0.5);
            color: black;
            width: 100%;
            height: 200px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row mt-5 mb-5">
        <h1>카카오 지도</h1>
        <div class="col-12">
            <div id="map"
                 data-address="경기도 수원시 장안구 대평로162번길 25-2(정자동, 성심빌라)"
                 style="width:360px; height:600px; background-color: #AAAAAA;">
                <div class="map-origin-position"
                     style="display: block;">
                    원위치
                </div>
                <div class="map-overlay-container">
                    Overlay
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
-->

<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cde34104a73ef798b0fc9edc7fb3bc5c&libraries=services,drawing"></script>
<script src="../../../resources/js/module/kakao-map.js"></script>
<script>
    let lat = 33.450701;
    let lon = 126.570667;
    let address = '경기도 수원시 장안구 대평로162번길 25-2(정자동, 성심빌라)';
    const kakaoAPIAddress = 'https://dapi.kakao.com/';
    $(document).ready(function () {
        if (navigator.geolocation) {

            // GeoLocation을 이용해서 접속 위치를 얻어옵니다
            navigator.geolocation.getCurrentPosition(function (position) {
                console.log(position);
                lat = position.coords.latitude; // 위도
                lon = position.coords.longitude; // 경도
                getKorLocation();
            });

        } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
            alert('현재 주소를 이용할 수 없습니다. 기본 주소로 설정합니다. 위치를 변경하고 싶으시면 수동으로 주소를 변경해주세요.');
        }

        /**Kakao Map*/

    });


    function getKorLocation() {
        const options = {
            method: 'GET',
            headers: {
                'Authorization': 'KakaoAK d3bf58bc3fde6681d307f3bea77f3cf1'
            }
        };
        fetch(kakaoAPIAddress + 'v2/local/geo/coord2address.json?x=' + lon + "&y=" + lat, options)
            .then(res => res.json())
            .then((res) => {
                console.log('res', res);
                address = res.documents[0].address === null ? res.documents[0].road_address.address_name : res.documents[0].address.address_name;
                let position = new kakao.maps.LatLng(lat, lon);

                kakaoMapInit('map', { //지도를 생성할 때 필요한 기본 옵션
                    center: position, //지도의 중심좌표.
                    level: 3, //지도의 레벨(확대, 축소 정도)
                    address: address
                });
            })
            .catch(rej => console.log(rej));
    }
</script>
</body>
</html>