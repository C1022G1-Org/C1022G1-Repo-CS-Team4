<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PlayList</title>
    <style>
        .play-btn {
            width: 50px;
            height: 50px;
            background: radial-gradient( rgba(255, 0, 128, 0.8) 60%, rgba(255, 255, 255, 1) 62%);
            border-radius: 50%;
            position: relative;
            display: block;
            margin: auto;
            box-shadow: 0px 0px 25px 3px rgba(255, 0, 128, 0.8);
        }

        /* triangle */
        .play-btn::after {
            content: "";
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translateX(-40%) translateY(-50%);
            transform: translateX(-40%) translateY(-50%);
            transform-origin: center center;
            width: 0;
            height: 0;
            border-top: 15px solid transparent;
            border-bottom: 15px solid transparent;
            border-left: 25px solid #fff;
            z-index: 100;
            -webkit-transition: all 400ms cubic-bezier(0.55, 0.055, 0.675, 0.19);
            transition: all 400ms cubic-bezier(0.55, 0.055, 0.675, 0.19);
        }
    </style>
    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/css/styleWeb.css">
    <link rel="stylesheet" href="\css\bootstrap.css">
    <link rel="stylesheet" href="\themify-icons\themify-icons.css">
    <link rel="stylesheet" href="\case_study2.css">
</head>

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
                    <a class="nav-link active text-white" aria-current="page" href="home.jsp">Home</a>
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
                <input class="form-control me-5 rounded-pill" style="padding-left: 40px" type="search"
                       placeholder="Search Music"
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
    <div class="row ms-0 me-0" style="margin-top: 56px">
        <div class="col-4" style="background-color: black"><img src="picture\ảnh playlist.png "style="width: 100% ;height: 50%;margin-top: 60px"><br>
            <a style="margin-top: 10px" class="play-btn" href="#"></a>
        </div>

        <div class="col-8 ">
            <table class="table table-primary table-striped">
                <tr>
                    <td>Stt</td>
                    <td>Name Song</td>
                    <td>Name Singer</td>
                    <td>Name Type</td>
                </tr>
                <c:forEach var="playList" items="${playList}" varStatus="stt">
                    <tr>
                        <td>${stt.count}</td>
                        <td>${playList.nameSong}</td>
                        <td>${playList.singer.singerName}</td>
                        <td>${playList.typeSong.typeName}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>


</div>
</div>
<script src="\js\bootstrap.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>

