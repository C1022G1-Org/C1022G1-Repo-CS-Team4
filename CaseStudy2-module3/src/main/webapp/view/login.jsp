<%--
  Created by IntelliJ IDEA.
  User: nlaqu
  Date: 2/12/2023
  Time: 2:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="\css\bootstrap.css">
</head>
<body>
<section class="vh-100" style="background-color: #6c757d">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <h3 class="mb-5">Sign in</h3>
                        <div class="form-outline mb-4">
                            <input type="email" id="typeEmailX-2" class="form-control form-control-lg" placeholder="Email" />
                        </div>
                        <div class="form-outline mb-4">
                            <input type="password" id="typePasswordX-2" class="form-control form-control-lg" placeholder="Password" />
                        </div>
                        <!-- Checkbox -->
                        <div class="form-check d-flex justify-content-start mb-4">
                            <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                            <label class="form-check-label" for="form1Example3"> Remember password </label>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                        <hr class="my-4">
                        <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #dd4b39;width: 232px"
                                type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
                        <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;"
                                type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="\js\bootstrap.js"></script>
</body>
</html>
