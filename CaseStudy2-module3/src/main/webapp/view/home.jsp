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
    <title>Home</title>
</head>
<link rel="stylesheet" href="\css\bootstrap.css">
<link rel="stylesheet" href="\themify-icons\themify-icons.css">
<link rel="stylesheet" href="\style.css">
<body>
<%--ROW 1 HEADER--%>
<nav class="navbar navbar-expand-lg bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-4" href="#">
            <img src="\picture\tải_xuống-removebg-preview.png" width="23px" height="23px" alt="">
        </a>
        <a class="navbar-brand me-4 text-white" href="/view/home.jsp">Group 4</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-3">
                    <a class="nav-link active text-white" aria-current="page" href="">Home</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="/playlist">Playlist</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="#">Podcast</a>
                </li>
                <li class="nav-item mx-3">
                    <a class="nav-link text-white" href="/view/artist.jsp">Artist</a>
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
                        <i class="ti-user"></i><a href="/view/login.jsp"
                                                  class="nav-link active login text-secondary text-nav"
                                                  aria-current="page">Login</a>
                    </li>
                    <li class="nav-item me-5">
                        <a class="nav-link active register rounded-pill text-black bg-white" aria-current="page"
                           href="/view/register.jsp">Register</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>
<%-- ROW 2 COL-3 TOPIC MUSIC--%>
<div class="row ms-0 me-0" style="margin-top: 56px">
    <div class="col-lg-3 back-ground-grey p-0">
        <a href="#"><h2 class="text-center text-white mt-4 ">TOPIC MUSIC <i class="ti-angle-right"></i></h2></a>
        <div class="card bg-dark text-white mt-3">
            <a href="#"><img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/08/13/e/5/a/b/1597291906936_org.jpg"
                    class="card-img" alt="..."></a>
            <%--            <div class="card-img-overlay">--%>
            <%--            </div>--%>
        </div>
        <div class="card bg-dark text-white mt-3">
            <a href="#"> <img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/11/a/3/6/c/1591856761534_org.jpg"
                    class="card-img" alt="...">
            </a>
        </div>
        <div class="card bg-dark text-white mt-3">
            <a href="#"> <img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/15/9/d/c/3/1592214676187_org.jpg"
                    class="card-img" alt="...">
            </a>
        </div>
        <div class="card bg-dark text-white mt-3">
            <a href="#"> <img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/09/03/3/4/d/6/1599120670727_org.jpg"
                    class="card-img" alt="...">
            </a>
        </div>
        <div class="card bg-dark text-white mt-3">
            <a href="#"><img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/09/3/2/9/5/1591683963667_org.jpg"
                    class="card-img" alt="...">
            </a>
        </div>
        <div class="card bg-dark text-white mt-3">
            <a href="#"><img
                    src="https://avatar-ex-swe.nixcdn.com/topic/mobile/2020/06/09/3/2/9/5/1591687218247_org.jpg"
                    class="card-img" alt="...">
            </a>
        </div>
    </div>
    <%--  ROW 2 COL-9 SLIDE  --%>
    <div class="col-lg-9 back-ground-grey2 p-0">
        <div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="#"><img class="d-block w-100 h-75"
                                     src="https://s3.cloud.cmctelecom.vn/tinhte2/2020/12/5276686_cover.jpg"
                                     alt="..."></a>

                </div>
                <div class="carousel-item">
                    <a href="#"><img class="d-block w-100 h-75"
                                     src="https://www.lofficielvietnam.com/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F56778%2F1671019296-maxresdefault.jpg%3Fauto%3Dformat%252Ccompress%26cs%3Dsrgb&w=3840&q=75"
                                     alt="..."></a>

                </div>
                <div class="carousel-item">
                    <a href="#"><img class="d-block w-100 h-75"
                                     src="https://i.ytimg.com/vi/pPS5t_MIle4/maxresdefault.jpg"
                                     alt="..."></a>

                </div>
                <div class="carousel-item">
                    <a href="#"><img class="d-block w-100 h-75"
                                     src="https://www.teahub.io/photos/full/276-2764105_adele-hello.jpg"
                                     alt="..."></a>

                </div>
                <div class="carousel-item">
                    <a href="#"> <img class="d-block w-100 h-75"
                                      src="https://avatar-ex-swe.nixcdn.com/slideshow/2023/02/09/d/6/1/b/1675913224975_org.jpg"
                                      alt="..."></a>

                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon prev" aria-hidden="true"></span>
                <span class="visually-hidden ">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon next" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleRide" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleRide" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleRide" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleRide" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleRide" data-bs-slide-to="4"
                        aria-label="Slide 5"></button>
            </div>
        </div>
        <div class="text-white">
            <ul class="pt-4 m-0">
                <li class="d-inline ms-4 rounded ">
                    <a href="#"><img style="width: 150px; height: 150px"
                                     src="https://upload.wikimedia.org/wikipedia/vi/f/f1/Adele_21.jpg"
                                     class="rounded-circle" alt="..."></a>
                </li>
                <li class="d-inline ms-5">
                    <a href="#"><img style="width: 150px; height: 150px"
                                     src="https://yt3.googleusercontent.com/ytc/AL5GRJWbn33QSMgvUbsu6faw1pxXz5jX7SVtCk7kWfhepA=s900-c-k-c0x00ffffff-no-rj"
                                     class="rounded-circle" alt="..."></a></li>
                <li class="d-inline ms-5">
                    <a href="#"><img style="width: 150px; height: 150px"
                                     src="https://iscale.iheart.com/catalog/artist/744880" class="rounded-circle"
                                     alt="..."></a></li>
                <li class="d-inline ms-5"><a href="#"><img style="width: 150px; height: 150px"
                                                           src="https://i5.walmartimages.com/asr/d0e4f0d5-fb86-49bf-a071-d80b2609bf82_1.87ccd11da989a7e57e5e861a414408b8.jpeg"
                                                           class="rounded-circle" alt="..."></a></li>
                <li class="d-inline ms-5"><a href="#"><img style="width: 150px; height: 150px"
                                                           src="https://kenh14cdn.com/203336854389633024/2020/12/31/photo-1-16094117624341764656274.jpg"
                                                           class="rounded-circle" alt="..."></a></li>
            </ul>
        </div>
    </div>
</div>
<%--ROW 3 TOP TREDING--%>
<div class="row m-0 text-white pt-3"
     style="background: rgba(0, 0, 0, 0) url(https://musicmd1fr.keeng.net/bucket-image-keeng/webv6/images/bg_rank.jpg) no-repeat scroll left top; display: flex; background-size:cover ">
    <h2 style="font-weight: bold;text-align: center;margin-top: 20px">TOP TRENDING</h2>
    <div class="row mt-4">
        <div class="col-4">
            <h3 class="text-center text-white">US-UK</h3>
            <div class="position-relative">
                <a href="#">
                    <img style="vertical-align: middle; height: 35%" class="card-img" src="https://m.media-amazon.com/images/M/MV5BNWFhMmUxODMtMzE4ZS00NTE4LTgwZTMtOTRmN2Y3MzliZjc2XkEyXkFqcGdeQXVyNTgyNjE0Mzg@._V1_.jpg" alt="">
                </a>
                <div class=" bre-info">
                    <span class="float-start" style="margin-left:20px; margin-top: 20px;font-size: 20px ">1</span>
                    <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Lovely</a></span></h5>
                    <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Billie Eilish, Khalid</p>
                </div>
            </div>
            <div style="margin-top: 10px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">2</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Hello</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Adele</p>
            </div>
            <div style="margin-top: 20px" >
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">3</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Perfect</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Ed Sheeran</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">4</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Dinamond</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Rihanna</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">5</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">The Hills</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Weeknd</p>
            </div>
        </div>
        <div class="col-4">
            <h3 class="text-center text-white">Việt Nam</h3>
            <div class="position-relative">
                <a href="#">
                    <img style="vertical-align: middle; height: 35%" class="card-img" src="https://cdn.tgdd.vn//GameApp/-1//1-800x450-22.png" alt="">
                </a>
                <div class=" bre-info">
                    <span class="float-start" style="margin-left:20px; margin-top: 20px;font-size: 20px ">1</span>
                    <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Chúng ta của hiện tại</a></span></h5>
                    <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Sơn Tùng MTP</p>
                </div>
            </div>
            <div style="margin-top: 10px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">2</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Luôn yêu đời</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Đen ft Cheng</p>
            </div>
            <div style="margin-top: 20px" >
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">3</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Bo xì bo</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Hoàng Thùy Linh</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">4</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Vỡ tan</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Trịnh Thăng Bình</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">5</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Waiting for you</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Mono</p>
            </div>
        </div>
        <div class="col-4">
            <h3 class="text-center text-white">K-POP</h3>
            <div class="position-relative">
                <a href="#">
                    <img style="vertical-align: middle; height: 35%" class="card-img" src="https://staticg.sportskeeda.com/editor/2022/06/792b4-16556404450795-1920.jpg" alt="">
                </a>
                <div class=" bre-info">
                    <span class="float-start" style="margin-left:20px; margin-top: 20px;font-size: 20px ">1</span>
                    <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Kill This Love</a></span></h5>
                    <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Black Pink</p>
                </div>
            </div>
            <div style="margin-top: 10px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">2</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Haru Haru</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >BigBang</p>
            </div>
            <div style="margin-top: 20px" >
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">3</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Fiction</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >BEAST</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">4</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">Bang Bang Bang</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >BigBang</p>
            </div>
            <div style="margin-top: 20px">
                <span class="float-start" style="margin-left:20px; margin-top: 10px;font-size: 20px ">5</span>
                <h5 style="margin-left: 55px;margin-top: 10px;margin-bottom: 0px "><span><a href="#">How you like that</a></span></h5>
                <p style="color: #9e9e9e; margin-left: 55px; margin-bottom: 0" >Black Pink</p>
            </div>
        </div>
    </div>
</div>


<%---ROW 4---%>
<div class="row bg-body-secondary py-5 m-0">
    <div class="col-12">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Reasons to upgrade your account?</h1>
            </div>
        </div>
        <div class="row mt-4 d-flex justify-content-center">
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430df61a7d75be4ed36c0857a61" width="142px"
                         height="142px" alt="">
                </div>
                <div>Download</div>
                <div>Listen everywhere</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430773401f794c2cc9a1f161cdc" alt="">
                </div>
                <div>Listen to music without ads</div>
                <div>Enjoy music without interruption</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430d5f682f0043198ce409efaab" width="142px"
                         height="142px" alt="">
                </div>
                <div>Download</div>
                <div>Listen everywhere</div>
            </div>
            <div class="col-2 text-center float-start">
                <div>
                    <img src="https://i.scdn.co/image/ab671c3d0000f430311a399af710a733778c610c" width="142px"
                         height="142px" alt="">
                </div>
                <div>Play music in any order</div>
                <div>
                    Play any song in the order you like
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Products -->
<section class="plans d-flex align-items-center py-5" id="plans">
    <div class="container text-dark">
        <div class="text-center pb-4">
            <p>OUR SERVICES</p>
            <h2 class="py-2">Choose the package that's right for you</h2>
        </div>
        <div class="row gy-4" data-aos="zoom-in">
            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">BASIC PACKAGE</h4>
                    <p class="py-3 text-center">Enthusiastic customer support.</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>There are many choices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Fits your pocket.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Discount when buying more than 5 products.</p>
                    </div>
                    <h4 class="py-3">$18/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link">
                            <i class="ti-shopping-cart"></i> Buy now</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">STANDARD PACKAGE</h4>
                    <p class="py-3 text-center">Listen to all content without advertising</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>sale off 50%.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Essential tools.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Brand name good price.</p>
                    </div>
                    <h4 class="py-3">$22/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link"><i class="ti-shopping-cart"></i> Buy now</a></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4"
                 style="box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); padding-top: 12px; padding-bottom: 12px">
                <div class="card bg-transparent px-4">
                    <h4 class="py-2 text-center">PREMIUM PACKAGE</h4>
                    <p class="py-3 text-center">Listen to all content without advertising</p>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>gratitude to vip customers.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Can be used on 2 devices.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>10% off your purchase.</p>
                    </div>
                    <div class="block d-flex align-items-center">
                        <p class="pe-2"><i class="ti-check text-success fs-3"></i></p>
                        <p>Play music in any order.</p>
                    </div>
                    <h4 class="py-3">$30/Month</h4>
                    <div class="my-3 bg-success" style="width: 30%">
                        <a class="btn text-light" href="#your-link"><i class="ti-shopping-cart"></i> Buy now</a></a>
                    </div>
                </div>
            </div>
        </div> <!-- end of row -->
    </div> <!-- end of container -->
</section> <!-- end of products -->

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


<script src="\js\bootstrap.js"></script>
</body>
</html>
