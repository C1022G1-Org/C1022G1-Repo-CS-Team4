<%--
  Created by IntelliJ IDEA.
  User: nlaqu
  Date: 2/9/2023
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PlayList</title>
</head>
<link rel="stylesheet" href="\css\bootstrap.css">
<link rel="stylesheet" href="\themify-icons\themify-icons.css">
<link rel="stylesheet" href="\style.css">
<body>
<nav class="navbar navbar-expand-lg bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-4" href="#">
            <img src="\picture\tải_xuống-removebg-preview.png" width="23px" height="23px" alt="">
        </a>
        <a class="navbar-brand me-4 text-white" href="#">Group 4</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-3">
                    <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Playlist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Podcast</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Artist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Album</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-5 rounded-pill" style="padding-left: 40px" type="search" placeholder="Search Music"
                       aria-label="Search"><i class="ti-search"></i>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item me-4">
                        <a class="nav-link active text-secondary help" aria-current="page" href="#">Help</a>
                    </li>
                    <li class="nav-item me-3">
                        <div class="column-menu"></div>
                    </li>
                    <li class="nav-item mx-2">
                        <i class="ti-user"></i><a class="nav-link active login text-secondary text-nav"
                                                  aria-current="page" href="#">Login</a>
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
<div class="row">
    <div class="col-3"></div>
    <div class="col-9">
        <button class=""></button>
        <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên bài hát</th>
            <th>Tên ca sĩ</th>
            <th>Thể loại</th>
            <th><img src="" alt=""></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td scope="row"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table></div>
</div>
<script src="\js\bootstrap.js"></script>
<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active1", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active1";
    }
</script>
</body>
</html>
