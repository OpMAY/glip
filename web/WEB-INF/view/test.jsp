<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: sangwoo
  Date: 2022-02-19
  Time: 오후 6:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<main>
    <section>
        <button onclick="postTest1();">POST Test1</button>
        <button onclick="postTest2();">POST Test2</button>
        <button onclick="postTest3();">POST Test3</button>
        <button onclick="putTest();">PUT Test</button>
        <button onclick="patchTest();">PATCH Test</button>
        <button onclick="deleteTest();">DELETE Test</button>
    </section>
    <section>
        <form action="/file.do" enctype="multipart/form-data" method="post">
            <input type="file" name="file">
            <button type="submit">단일업로드</button>
        </form>
        <form action="/files.do" enctype="multipart/form-data" method="post">
            <input type="file" multiple="multiple" name="files">
            <button type="submit">복수업로드1</button>
        </form>
        <form action="/filemap.do" enctype="multipart/form-data" method="post">
            <input type="file" name="file1">
            <input type="file" name="file2">
            <input type="file" name="file3">
            <button type="submit">복수업로드2</button>
        </form>
    </section>
    <section>
        <table>
            <tr>
                <th>PK</th>
                <th>이름</th>
                <th>생성날짜</th>
                <th>수정날짜</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.no}</td>
                    <td>${user.name}</td>
                    <td><tf:formatDatetime value="${user.reg_datetime}"/></td>
                    <td><tf:formatDatetime value="${user.updated_datetime}"/></td>
                </tr>
            </c:forEach>
        </table>
        <form action="/user.do" method="post">
            <input type="text" name="name" placeholder="회원이름을 입력하세요.">
            <button type="submit">회원등록</button>
        </form>
    </section>
    <section>
        <span>쿠키 : </span>
        <span id="cookie">?</span>
        <input type="text" id="cookie-input" placeholder="쿠키에 넣을 숫자를 입력하세요.">
        <button type="button" onclick="addCookie();">브라우저 삽입</button>
        <button type="button" onclick="getDecryptedCookie();">쿠키정보보기</button>
    </section>

    <section>
        <div><b>MAP</b></div>
        <div id="kakao-map" style="width: 500px; height: 400px;"></div>
    </section>
</main>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cde34104a73ef798b0fc9edc7fb3bc5c&libraries=services"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
<script src="/resources/js/cookie.js"></script>
<script src="/resources/js/common.js"></script>
<script>
    async function getTest() {
        const data = {no: 111, testcol: 'test string is success!'}
        const options = {
            method: "GET",
        };
        try {
            const result = await fetch(getUrlBuilder(data, '/fetch-get-test.do'), options).then(res => res.json());
            console.log(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function postTest1() {
        const data = {test: "test string"}
        const options = {
            method: "POST",
            body: new URLSearchParams(data)
        };
        try {
            const result = await fetch('/post-test1.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function postTest2() {
        const data = {test: "test string"}
        const options = {
            method: "POST",
            headers: {
                'Content-Type': 'application/json;'
            },
            body: JSON.stringify(data)
        };
        try {
            const result = await fetch('/post-test2.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function postTest3() {
        const data = {
            email: "test",
            id: "test1",
            name: "test2"
        }
        const options = {
            method: "POST",
            headers: {
                'Content-Type': 'application/json;'
            },
            body: JSON.stringify(data)
        };
        try {
            const result = await fetch('/post-test3.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function putTest() {
        const data = {test: "test string"}
        const options = {
            method: "PUT",
            body: new URLSearchParams(data)
        };
        try {
            const result = await fetch('/put-test.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function patchTest() {
        const data = {test: "test string"}
        const options = {
            method: "PATCH",
            body: new URLSearchParams(data)
        };
        try {
            const result = await fetch('/patch-test.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    async function deleteTest() {
        const data = {test: "test string"}
        const options = {
            method: "DELETE",
            body: new URLSearchParams(data)
        };
        try {
            const result = await fetch('/delete-test.do', options).then(res => res.json());
            console.log(result);
            alert(result);
        } catch (e) {
            console.error(e);
        }
    }

    document.addEventListener('DOMContentLoaded', function () {
        const cookie = getCookie('test');
        document.querySelector('#cookie').innerText = cookie;
    });

    async function addCookie() {
        let value = document.querySelector('#cookie-input').value;
        const data = {value};
        const options = {
            method: "POST",
            body: new URLSearchParams(data)
        };
        const result = await fetch('/encrypt.do', options).then(res => res.json()).then(res => res.data.result);
        setCookie({name: 'test', value: result});

        document.querySelector('#cookie').innerText = result;
    }

    async function getDecryptedCookie() {
        const cookie = getCookie('test');
        if (cookie === null) {
            alert('쿠키가 없습니다.');
            return;
        }
        const data = {value: cookie};
        const options = {
            method: "POST",
            body: new URLSearchParams(data)
        };
        const result = await fetch('/decrypt.do', options).then(res => res.json()).then(res => res.data.result);
        alert(result);
    }

    const mapContainer = document.querySelector('#kakao-map');
    const kakao_map_target_address = '서울시 관악구 남부순환로 1892';
    const kakap_map_label = '우리회사';
    kakaoMapInit(mapContainer, kakao_map_target_address);

    /**
     * 카카오 맵에 주소로 위치를 찾아 지도를 생성하고 마커를 생성합니다.
     * @requires : kakao sdk javascript import with API key
     * @param mapContainer - 지도를 표시할 element
     * @param address - 주소
     * @param label - 마커 위에 표시할 이름 (선택 : 없으면 표시 X)
     */
    function kakaoMapInit(mapContainer, address, label) {
        // 주소-좌표 변환 객체를 생성합니다
        const geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다
        geocoder.addressSearch(address, (result, status) => {
            // console.log(result, status);
            // 정상적으로 검색이 완료됐으면
            if (status === kakao.maps.services.Status.OK) {
                displayKakaoMap(mapContainer, result[0].y, result[0].x, label);
            } else {
                // todo : logic when no result found
                mapContainer.innerText = '주소와 일치하는 지도 정보가 없습니다.';
            }
        });
    }

    function displayKakaoMap(mapContainer, latitude, longitude, label) {
        const mapOption = {
            center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
        };
        const map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다
        const markerPosition = new kakao.maps.LatLng(latitude, longitude);

        // 마커를 생성합니다
        const marker = new kakao.maps.Marker({
            position: markerPosition
        });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        if (label !== undefined) {
            const infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">' + label + '</div>'
            });
            infowindow.open(map, marker);
        }
    }
</script>
</body>
</html>
