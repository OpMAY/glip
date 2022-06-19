<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Glip 관리자 로그인</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
          name="description"/>
    <meta content="Coderthemes"
          name="author"/>
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon"
          href="../../../resources/admin/assets/images/favicon.ico">

    <!-- App css -->
    <link href="../../../resources/admin/assets/css/config/default/bootstrap.min.css"
          rel="stylesheet"
          type="text/css"
          id="bs-default-stylesheet"/>
    <link href="../../../resources/admin/assets/css/config/default/app.min.css"
          rel="stylesheet"
          type="text/css"
          id="app-default-stylesheet"/>

    <link href="../../../resources/admin/assets/css/config/default/bootstrap-dark.min.css"
          rel="stylesheet"
          type="text/css"
          id="bs-dark-stylesheet"/>
    <link href="../../../resources/admin/assets/css/config/default/app-dark.min.css"
          rel="stylesheet"
          type="text/css"
          id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="../../../resources/admin/assets/css/icons.min.css"
          rel="stylesheet"
          type="text/css"/>

    <!-- custom css -->
    <link href="../../../resources/admin/assets/css/custom.css"
          rel="stylesheet"
          type="text/css"/>

</head>

<body class="loading authentication-bg authentication-bg-pattern">

<div class="account-pages d-flex">
    <div class="container my-auto">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-4">
                <div class="card bg-pattern">

                    <div class="card-body p-4">

                        <div class="text-center w-75 m-auto">
                            <div class="auth-logo">
                  <span class="logo-lg">
                    <img src="../../../resources/assets/images/glip/main_logo_bg.svg"
                         alt=""
                         height="40">
                  </span>
                            </div>
                        </div>

                        <div class="mb-3 mt-3">
                            <label for="adminId"
                                   class="form-label">아이디</label>
                            <input class="form-control"
                                   type="text"
                                   id="adminId"
                                   required=""
                                   placeholder="아이디를 입력하세요.">
                        </div>

                        <div class="mb-3">
                            <label for="password"
                                   class="form-label">비밀번호</label>
                            <div class="input-group input-group-merge">
                                <input type="password"
                                       id="password"
                                       class="form-control"
                                       placeholder="비밀번호를 입력하세요.">
                                <div class="input-group-text"
                                     data-password="false">
                                    <span class="password-eye"></span>
                                </div>
                            </div>
                        </div>

                        <div class="text-center d-grid">
                            <button class="btn btn-primary"
                                    type="button" id="login"> 로그인
                            </button>
                        </div>

                    </div> <!-- end card-body -->
                </div>
                <!-- end card -->

            </div> <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end page -->


<footer class="footer footer-alt">
    2015 -
    <script>document.write(new Date().getFullYear())</script> &copy; Glip theme by <a href=""
                                                                                      class="text-white-50">Okiwi</a>
</footer>

<!-- Vendor js -->
<script src="../../../resources/admin/assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="../../../resources/admin/assets/js/app.min.js"></script>

<script>
    $('#login').on('click', function () {
        login()
    })

    $('#adminId').on('keypress', function(e){
        if(e.which === 13){
            login();
        }
    });

    $('#password').on('keypress', function (e) {
        if(e.which === 13){
            login();
        }
    })

    function login() {
        const data = {};
        data.id = $('#adminId').val();
        data.password = $('#password').val();
        const options = {
            method: 'POST',
            headers : {
                'Content-Type' : 'application/json;charset=utf-8'
            },
            body: JSON.stringify(data)
        }
        fetch('/admin/login', options)
            .then(res => res.json())
            .then((res) => {
                if(res.status === 200) {
                    window.location.replace('/admin/dashboard.do');
                } else {
                    alert('로그인 실패');
                }
            })
            .catch(rej => console.error(rej));
    }
</script>

</body>
</html>