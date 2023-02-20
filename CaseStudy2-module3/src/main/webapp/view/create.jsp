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
    <link rel="stylesheet" href="\themify-icons\themify-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>

<body>
<nav class="navbar navbar-expand-lg bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-4" href="/view/home.jsp">
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
                    <a class="nav-link active text-white" aria-current="page" href="/view/home.jsp">Home</a>
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
                    <c:if test="${sessionScope.nameAccount != null}">
                        <li>
                            <a style="position: relative; right: 35px; top: 8px" href="#">${sessionScope.nameAccount.name}</a>
                        </li>
                        <li class="nav-item mx-2"><a href="/user?action=logout"
                                                     class="nav-link active login text-secondary text-nav"
                                                     aria-current="page"> <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white" class="ti-shift-right"></i>Logout</a>
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
                           href="#">Register</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>
<div class="row m-0">
    <div class="row ms-0 me-0 p-0" style="margin-top: 56px">
        <div class="col-4 py-3" style="background-color: black;height: 100%"><img
                src="https://i.pinimg.com/564x/5e/60/b7/5e60b70cef4cec25b10f6fee314ec92a.jpg"
                style="width: 100% ;height: 100%;"><br>
        </div>

        <div class="col-8 ">
            <form method="post">
                <table class="table table-dark table-striped">
                    <tr>
                        <th>Name Song</th>
                        <th>Name Singer</th>
                        <th>Name Type</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="nameSong" placeholder="Name of the song">
                        </td>
                        <td>
                            <select name="singerId">--%>
                                <c:forEach items="${singerList}" var="singerList" varStatus="stt">
                                    <option value="${singerList.singerId}">${singerList.singerName}</option>
                                </c:forEach>
                            </select>
                        </td>
<%--                        <td>--%>
<%--                            <select name="singerId">--%>
<%--                                <c:forEach items="${playlist}" var="playlist">--%>
<%--                                    <option value="${playlist.getSinger().getSingerId()}">${playlist.getSinger().getSingerName()}</option>--%>
<%--                                </c:forEach>--%>
<%--                            </select>--%>
<%--                        </td>--%>
                        <td>
                            <select name="typeId">--%>
                                <c:forEach items="${typeSongList}" var="typeSongList" varStatus="stt">
                                    <option value="${typeSongList.typeId}">${typeSongList.typeName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <section style="width: 5rem;height: 40px;border-radius: 150px;" class="bg-dark mt-3 mb-2 me-3 float-end d-flex align-items-center justify-content-center">
                        <div class="circle long">
                            <input style="border: none" class="bg-dark text-white" type="submit" value="Add">
                        </div>
                    </section>
                </table>
            </form>
            </table>
        </div>
    </div>


</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>

