<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 13/02/2023
  Time: 10:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Artist</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="\themify-icons\themify-icons.css">
    <link rel="stylesheet" href="\style.css">
    <style>
        .background-playlist {
            color: white;
            text-decoration: none;
            background: black;
            padding: 5px;
            width: 100%;
            height: 500px;
            text-align: center;
        }

        .background-playlist {
            animation: colorBackground 3s infinite;
            -webkit-animation: colorBackground 5s infinite;
            -moz-animation: colorBackground 5s infinite;
            -o-animation: colorBackground 3s infinite
        }

        @keyframes colorBackground {
            0% {
                background-color: lightslategray;
                color: lightslategray;
            }
            50% {
                background-color: #6c757d;
                color: #6c757d;
            }
        }

        .background-playlist:hover {
            background: #2b3035;
            color: darkolivegreen;
        }

        .background-playlist:active {
            background: green;
        }

        .container-main {
            position: relative;
            left: 6%;
        }

        .container-main .noi_dung {
            width: 400px;
            height: 400px;
            background: #000;
            transform: scaleX(0);
            transform-origin: left;
            animation: reveal 1s ease-in-out forwards;
        }

        .container-main .noi_dung img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .container-main .noi_dung::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000;
            z-index: 1;
            animation: reveal 1s reverse forwards;
            animation-delay: 3s;
            transform-origin: right;
        }

        @keyframes reveal {
            0% {
                transform: scaleX(0);
            }
            100% {
                transform: scaleX(1);
            }
        }

        .container-main .noi_dung h2 {
            position: absolute;
            right: -100px;
            bottom: 50px;
            margin: 0;
            padding: 10px;
            background: #fff;
            z-index: 2;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
            transform: scaleX(0);
            transform-origin: left;
            animation: reveal 1s ease-in-out forwards;
            animation-delay: 1s;
        }

        .container-main .noi_dung h2::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #fff;
            z-index: 1;
            animation: reveal 1s reverse forwards;
            animation-delay: 2s;
            transform-origin: right;
        }

        .trending-music-img {
            border-radius: 50%;
        }
    </style>
</head>
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
                    <a class="nav-link active text-white" aria-current="page" href="/view/home.jsp">Home</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="/view/playlist.jsp">Playlist</a>
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
                    <c:if test="${sessionScope.nameAccount != null}">
                        <li>
                            <a style="position: relative; right: 35px; top: 8px" href="#">${sessionScope.nameAccount.name}</a>
                        </li>
                        <li class="nav-item mx-2"><a href="/user?action=logout"
                                                     class="nav-link active login text-secondary text-nav"
                                                     aria-current="page"> <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white" class="ti-shift-right"></i> Logout</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.nameAccount == null}">
                        <li class="nav-item mx-2">
                            <i class="ti-user"></i><a href="/view/login.jsp"
                                                      class="nav-link active login text-secondary text-nav"
                                                      aria-current="page">Login</a>
                        </li>
                    </c:if>
                    <li class="nav-item me-5">
                        <a class="nav-link active register rounded-pill text-black bg-white" aria-current="page"
                           href="/view/register.jsp">Register</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>

<%--artist--%>
<div class="row m-0">
    <div class="col-12 p-0">

        <%--header-artist--%>
        <div class="row m-0">
            <div class="col-12 p-0">
                <div class="position-relative d-flex">
                    <div class="background-playlist"></div>
                    <img class="position-absolute"
                         src="https://i.scdn.co/image/ab67616d0000b273eda65b93d53c2f982c5d57d8"
                         height="300px" style="left: 10%; bottom: 5%" alt="">
                    <div class="position-absolute text-light" style="left: 33%; bottom: 6%; font-size: 70px">Artist
                    </div>
                </div>
            </div>
        </div>

        <%--main-artist--%>
        <div class="row d-flex align-items-center m-0" style="height: 600px">
            <div class="col-6 container-main">
                <div class="noi_dung">
                    <img src="data:image/jpeg;base64,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"
                         style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" alt="">
                    <h2>Son Tung MTP</h2>
                </div>
            </div>
            <div class="col-6">
                <div class="row">
                    <div class="col-12">
                        <h1 class="text-center">TOP Artist in this week</h1>
                    </div>
                </div>
                <div class="row">

                    <%--col-1--%>
                    <div class="col-6">
                        <ol>
                            <li class="d-flex mt-4">
                                <p class="mb-0 d-flex align-items-center">1</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="data:image/jpeg;base64,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"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Son Tung MTP</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">2</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://photo-resize-zmp3.zmdcdn.me/w360_r1x1_jpeg/avatars/9/e/6/1/9e614e0267968c01457e2b692e2e7272.jpg"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Noo Phuoc Thinh</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">3</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://i.scdn.co/image/ab6761610000e5eb9896fc9a2e28384f2d705c45"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Vu.</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">4</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://images2.thanhnien.vn/uploaded/hienht/2021_04_12/den-vau_TICF.jpg?width=500"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Den Vau</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">5</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://i.scdn.co/image/ab6761610000e5eb5555bf6bc246d912bca3c0f0"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Trung Quan</div>
                                </a>
                            </li>
                        </ol>
                    </div>

                    <%--col-2--%>
                    <div class="col-6">
                        <ol>
                            <li class="d-flex mt-4">
                                <p class="mb-0 d-flex align-items-center">6</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://image.phunuonline.com.vn/fckeditor/upload/2022/20220908/images/3260_1-1.jpg"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Huynh James</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">7</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/06/29/0/9/e/a/1593412376912_600.jpg"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Karik</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">8</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/3/16/photo-1-1615870370268953346522.jpg"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Amee</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">9</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="https://images2.thanhnien.vn/Uploaded/thynhm/2022_08_08/ha-nhi-7-8636.jpg"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Ha Nhi</div>
                                </a>
                            </li>
                            <li class="d-flex my-4">
                                <p class="mb-0 d-flex align-items-center">10</p>
                                <a class="d-flex ps-3" href="#">
                                    <img class="trending-music-img"
                                         src="data:image/jpeg;base64,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"
                                         width="40px" height="40px" alt="">
                                    <div class="text-dark d-flex align-items-center ps-3">Quan A.P</div>
                                </a>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <%--gallery--%>
        <div class="row d-flex align-items-center bg-secondary m-0 " style="height: 700px">
            <div class="col-6">
                <div class="row">
                    <div class="col-6 d-flex justify-content-center">
                        <img src="https://i.scdn.co/image/ab6761610000e5eb5555bf6bc246d912bca3c0f0"
                             style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" width="70%"
                             height="240px" alt="">
                    </div>
                    <div class="col-6 d-flex justify-content-center">
                        <img src="https://photo-resize-zmp3.zmdcdn.me/w360_r1x1_jpeg/avatars/9/e/6/1/9e614e0267968c01457e2b692e2e7272.jpg"
                             style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" width="70%" height="240px" alt="">
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-6 d-flex justify-content-center">
                        <img src="https://i.scdn.co/image/ab6761610000e5eb916d46fa6ab17246f55a00f7"
                             style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" width="70%" height="240px" alt="">
                    </div>
                    <div class="col-6 d-flex justify-content-center">
                        <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/avatars/b/a/d/2/bad27197c6774fc04c039c040ed8813c.jpg"
                             style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" width="70%" height="240px" alt="">
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="row">
                    <div class="col-12 d-flex justify-content-center">
                        <img src="https://galaxylands.com.vn/wp-content/uploads/2022/10/tieu-su-ca-si-mono-17.jpg"
                             style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);" width="80%" alt="">
                    </div>
                </div>
            </div>
        </div>

        <%--link to choice--%>
        <div class="row d-flex align-items-center m-0" style="background-color: #eae6e6; height: 130px">
            <div class="col-12">
                <div class="float-start text-center w-50">
                    <div>
                        <img
                                src="https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/gldn-Quick-Link-Icon-80x80-Microsoft-365?wid=40&hei=40"
                                alt="">
                    </div>
                    <div class="mt-2"><a href="#" class="text-dark">Choose Group 4 for your Windown</a></div>
                </div>
                <div class="float-start text-center w-50">
                    <div><i class="ti-android" style="font-size: 40px"></i></div>
                    <div class="mt-2"><a href="#" class="text-dark">Choose Group 4 for your Android</a></div>
                </div>
            </div>
        </div>

    </div>
</div>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
