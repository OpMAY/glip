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
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote.css">
    <link rel="stylesheet"
          href="../../../resources/css/summernote/summernote-custom.css">

    <title>Summernote</title>
</head>
<body>
<div class="container">
    <div id="summernote"></div>
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
<script src="../../../resources/js/module/summernote/summernote.js"></script>
<script src="../../../resources/js/module/summernote/summernote-kr.js"></script>
<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
-->
<script>
    $(document).ready(function () {
        $('#summernote').summernote({
            placeholder: '내용을 입력해주세요.',
            tabsize: 2,
            height: 300,
            lang: 'ko-KR',
            focus: true, // 활성화 시 input focus
            disableResizeEditor: true, // Size 조절
            toolbar: [ // Toolbar Set
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['insert',['picture','link']],
                ['view', ['help']]
            ],
            maxUploadSize: 1024 * 1024 * 5,
            maxUploadOnError: () => {
                console.log('maxUploadOnError');
                $('[data-dismiss="modal"]').click();
            },
            /**
             * Description : 스마트에디터 파일 업로더 Ajax
             * Prerequisite : Summernote Smarteditor가 존재 해야한다.
             * Parameter : deferred -> smarteditor 내무에 존재하는 변수
             * Return : Non
             * Date : 2021-07-12
             * Version : 1
             * */
            imageUploader: (deferred, file) => {
                var formData = new FormData(); // HTML5
                formData.append("file", file);
                $.ajax({
                    url: '/smarteditor/image/upload',
                    processData: false,
                    contentType: false,
                    data: formData,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    beforeSend: function (xhr) {
                        // XHR Header를 포함해서 HTTP Request를 하기전에 호출됩니다.
                        xhr.setRequestHeader('ajax', true);
                    },
                    success: function (data, status, xhr) {
                        console.log(data, status, xhr);
                        data = data.data;
                        deferred.resolve(data.url);
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr, status, error);
                        deferred.reject();
                        throw new Error(`Error :: status : ${status}, error : ${error}`);
                    },
                    complete: function (xhr, status) {
                        console.log(xhr, status);
                    }
                });
            }
        });
    });

</script>
</body>
</html>