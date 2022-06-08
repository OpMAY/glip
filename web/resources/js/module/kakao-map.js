/** Variable*/
let map;
let container;
let geocoder;
let origin_marker;
let origin_level;
let overlays;
const markerImgSrc = 'http://localhost:8080/resources/assets/images/glip/icon_my_location.svg',
    markerImgSize = new kakao.maps.Size(32, 32),
    markerImgOption = {offset: new kakao.maps.Point(27, 69)};
const markerImage = new kakao.maps.MarkerImage(markerImgSrc, markerImgSize, markerImgOption);

/** Initializing*/
const kakaoMapInit = (id, options) => {
    container = document.getElementById(id); //지도를 담을 영역의 DOM 레퍼런스
    origin_level = options.level;
    map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    initMapEvent();
    if (options.address.trim().length !== 0 && options.address.trim() !== '') {
        addressSearch(options.address);
    } else {
        // 결과값으로 받은 위치를 마커로 표시합니다
        removeMarker();
        origin_marker = setMarker(options.center);
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        mapCenterPosition(options.center);
        showOriginPosition();
        showMap();
    }
    $('.map-origin-position').click(setOriginPosition);
}

const initMapEvent = () => {
    kakao.maps.event.addListener(map, 'dragstart', function () {
        if ($('.map-overlay-container').css('bottom') === '0px') {
            overlayContainerHide()
        }
    });
    kakao.maps.event.addListener(map, 'dragend', function () {
        // console.log('dragend');
    });
    kakao.maps.event.addListener(map, 'mouseover', function () {
        // console.log('mouseover');
    });
    kakao.maps.event.addListener(map, 'mouseout', function () {
        // console.log('mouseout');
    });
    kakao.maps.event.addListener(map, 'click', function () {
        if ($('.map-overlay-container').css('bottom') === '0px') {
            overlayContainerHide()
        }
    });
}

/** setBaseMarker*/
const setMarker = (markerPosition) => {
    let marker = new kakao.maps.Marker({
        position: markerPosition,
        map: map,
        image : markerImage
    });
    origin_marker = marker;
    return marker;
};

/** Address Search*/
const addressSearch = (address) => {
    // 주소-좌표 변환 객체를 생성합니다
    geocoder = new kakao.maps.services.Geocoder();
    geocoder.addressSearch(address, function (result, status) {
        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {
            console.log(result[0].y, result[0].x);
            let coords = new kakao.maps.LatLng(result[0].y, result[0].x);
            // 결과값으로 받은 위치를 마커로 표시합니다
            removeMarker();
            origin_marker = setMarker(coords);
            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            mapCenterPosition(coords);
            showOriginPosition();
            showMap();
            setOverlays();
        } else {
            hideMap();
            hideOriginPosition();
        }
    });
}

/** Test Set Overlays
 * @param data = database overlay objects*/
const setOverlays = (data) => {
    if (data === undefined || data === null) {
        data = [{no: 1}, {no: 2}, {no: 3}, {no: 4}, {no: 5}, {no: 6}, {no: 7}, {no: 8}, {no: 9}, {no: 10}];
    }
    overlays = new Array();
    let coords;
    let content;
    let customOverlay;
    for (let i = 0; i < data.length; i++) {
        coords = new kakao.maps.LatLng(37.4783696, 126.959507 + (i / 1000));
        content = createContent({no: data[i].no});
        customOverlay = new kakao.maps.CustomOverlay({
            position: coords,
            content: content
        });
        overlays.push(customOverlay);
    }

    overlays.forEach((overlay) => {
        overlay.setMap(map);
    });

    $(container).on('click', '[data-no]', overlayClickEventListener);
}

/** Create Overlay HTML
 * @param no = db-primary-key*/
const createContent = ({no}) => {
    return `<div data-no="${no}" class="exhibition-mark"></div>`;
}

function overlayClickEventListener(e) {
    /** TODO Fetch Overlay Data */
    let $target = $(e.target);
    console.log($target.data());
    $('.exhibition-mark.active').removeClass('active');
    $target.addClass('active');
    $('.map-overlay-container').text($target.data().no);
    overlayContainerShow();
}

const overlayContainerShow = () => {
    $('.map-overlay-container').css('bottom', '0');
}

const overlayContainerHide = () => {
    $('.exhibition-mark.active').removeClass('active');
    $('.map-overlay-container').css('bottom', '-200px');
}

/** Base Marker Map Center Position Move
 * @param position = new kakao.maps.LatLng(lat, lng)*/
const mapCenterPosition = (position) => {
    map.setCenter(position);
}

/** Remove Base Marker*/
const removeMarker = () => {
    if (origin_marker !== undefined && origin_marker !== null) {
        origin_marker.setMap(null);
    }
}

/** Hide Origin Position */
const hideOriginPosition = () => {
    $('.map-origin-position').hide();
}

/** Show Origin Position */
const showOriginPosition = () => {
    $('.map-origin-position').show();
}

/** Set Origin Position */
const setOriginPosition = () => {
    let data = document.querySelector('[data-address]');
    if (data) {
        hideOriginPosition();
        removeMarker();
        setOriginLevel();
        addressSearch(data.dataset.address);
    }
}

/** Set Origin Level */
const setOriginLevel = () => {
    map.setLevel(origin_level);
}

const hideMap = () => {
    container.style.display = 'none';
}

const showMap = () => {
    container.style.display = 'block';
}