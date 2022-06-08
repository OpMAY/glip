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
    let latitude2 = 37.4796483615109;
    let longitude2 = 126.960828355512;

    const mapOption = {
        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };
    const map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    let content = '<div class="label" data-key="회사" style="background-color: white"><span class="left"></span><span class="center">본가!</span><span class="right"></span></div>';

    let content2 = '<div class="label" data-key="본가" style="background-color: white"><span class="left"></span><span class="center">회사!</span><span class="right"></span></div>';

    let position = new kakao.maps.LatLng(latitude, longitude);

    let position2 = new kakao.maps.LatLng(latitude2, longitude2);

    let customOverlay = new kakao.maps.CustomOverlay(
        {
            position: position,
            content: content
        }
    )

    let customOverlay2 = new kakao.maps.CustomOverlay(
        {
            position: position2,
            content: content2
        }
    )

    customOverlay.setMap(map);
    customOverlay2.setMap(map);

    $(document).on('click', '.label', function () {
        alert($(this).data('key'));
    })
}