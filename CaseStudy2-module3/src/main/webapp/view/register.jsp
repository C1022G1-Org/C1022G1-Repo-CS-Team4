<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 11/02/2023
  Time: 3:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<link rel="stylesheet" href="\css\bootstrap.css">
<link rel="stylesheet" href="\themify-icons\themify-icons.css">
<link rel="stylesheet" href="\style.css">
<body>

<%--header--%>
<nav class="navbar navbar-expand-lg bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-4" href="#">
            <img src="/picture/tải_xuống-removebg-preview.png" width="23px" height="23px" alt="">
        </a>
        <a class="navbar-brand me-4 text-white" href="/view/home.jsp">Group 4</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-3">
                    <a class="nav-link active text-white" aria-current="page" href="/view/login.jsp">Home</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Playlist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Podcast</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="artist.jsp">Artist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Album</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-5 rounded-pill" style="padding-left: 40px" type="search"
                       placeholder="Search Music"
                       aria-label="Search"><i class="ti-search"></i>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item me-4">
                        <a class="nav-link active text-secondary help" aria-current="page" href="#">Contact</a>
                    </li>
                    <li class="nav-item me-3">
                        <div class="column-menu"></div>
                    </li>
                    <li class="nav-item mx-2">
                        <i class="ti-user"></i><a class="nav-link active login text-secondary text-nav"
                                                  aria-current="page" href="/view/login.jsp">Login</a>
                    </li>
                    <li class="nav-item me-5">
                        <a class="nav-link active register rounded-pill text-black bg-white" aria-current="page"
                           href="#">Register</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>

<%--register--%>
<form action="">
    <div class="row my-5" style="height: 720px; max-width: 450px; margin: 0 auto">
        <div class="col-12">
            <div class="row">
                <div class="col-12 pt-5 d-flex justify-content-center">
                    <i class="ti-music-alt" style="color: #40c140"></i>
                    <a class="navbar-brand me-4 text-dark fs-1 fw-bold" href="#">Group 4</a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 pt-2 d-flex justify-content-center">
                    <p class="text-dark fs-2 pt-0">Sign up to listen for free</p>
                </div>
            </div>
            <form action="">
                <div class="row my-4">
                    <div class="col-12">
                        <div class="mb-2">
                            <label class="fw-semibold">Your email?</label>
                        </div>
                        <input class="ps-2" style="inline-size: 100%; height: 45px; line-height: 45px" type="text" name="email" id="email" placeholder="Input your email.">
                    </div>
                </div>
                <div class="row my-4">
                    <div class="col-12">
                        <div class="mb-2">
                            <label class="fw-semibold">Create your password.</label>
                        </div>
                        <input class="ps-2" style="inline-size: 100%; height: 45px; line-height: 45px" type="password" name="password" id="password" placeholder="Create your password.">
                    </div>
                </div>
                <div class="row my-4">
                    <div class="col-12">
                        <div class="mb-2">
                            <label class="fw-semibold">Input your password again.</label>
                        </div>
                        <input class="ps-2" style="inline-size: 100%; height: 45px; line-height: 45px" type="password" name="password2" id="password2" placeholder="Input your password again.">
                    </div>
                </div>
                <div class="row my-4">
                    <div class="col-12">
                        <div class="mb-2">
                            <label class="fw-semibold">Your name?</label>
                        </div>
                        <input class="ps-2" style="inline-size: 100%; height: 45px; line-height: 45px" type="text" name="your-name" id="your-name" placeholder="Input your name.">
                    </div>
                </div>
                <div class="row my-4">
                    <div class="col-12">
                        <div class="pb-1">
                            <label class="fw-semibold">Gender?</label>
                        </div>
                        <div class="d-flex ps-3">
                            <div class="me-5"><input class="me-3" name="gender" type="radio">Male</div>
                            <div class="me-5"><input class="me-3" name="gender" type="radio">Female</div>
                            <div class="me-5"><input class="me-3" name="gender" type="radio">Diffenrent</div></div>
                    </div>
                </div>
                <div class="row pt-3 pb-5">
                    <div class="col-12 d-flex justify-content-center">
                        <button class="border-0 rounded-pill" style="height: 40px; width: 90px; background-color: #23ee23" type="submit">Register</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</form>

<%--footer--%>
<section class="footer bg-dark text-light">
    <div class="container">
        <div class="row" data-aos="fade-right">
            <div class="col-lg-3 py-4 py-md-5">
                <div class="d-flex align-items-center">
                    <h4 class="">Group 4</h4>
                </div>
                <p class="py-3 para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam atque,
                    deserunt doloremque doloribus et facere, illo ipsam iste molestiae, necessitatibus nobis nulla
                    officia perspiciatis qui ratione similique suscipit vel voluptatem!</p>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div>
                    <h4 class="py-2">Company</h4>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#about"><p class="ms-3">Introduce</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Job</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">For the Record</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Contact</p></a>
                    </div>
                </div>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div>
                    <h4 class="py-2">Community</h4>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">For Artists</p></a>

                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">Developers</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Advertisement</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Investors</p></a>
                    </div>
                    <div class="d-flex align-items-center py-2">
                        <i class="ti-angle-right"></i>
                        <a href="#"><p class="ms-3">
                            Supplier</p></a>
                    </div>
                </div>
            </div> <!-- end of col -->

            <div class="col-lg-3 py-4 py-md-5">
                <div class="d-flex align-items-center">
                    <h4>Newsletter</h4>
                </div>
                <p class="py-3 para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit,
                    voluptatum?</p>
                <div class="d-flex align-items-center">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control p-2" placeholder="Enter Email"
                               aria-label="Recipient's email">
                    </div>
                </div>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</section> <!-- end of footer -->

<!-- Bottom -->
<div class="bg-dark text-light">
    <div class="container d-flex justify-content-between">
        <div><p class="my-0">&copy; Copyright by Group 4</p><br>
            <p>Distributed by: <a href="#">C1022G1</a></p></div>
        <div>
            <i class="ti-youtube pe-2"></i>
            <i class="ti-facebook pe-2"></i>
            <i class="ti-instagram pe-2"></i>
            <i class="ti-soundcloud pe-2"></i>
        </div>
    </div> <!-- end of container -->
</div> <!-- end of bottom -->
</body>
</html>