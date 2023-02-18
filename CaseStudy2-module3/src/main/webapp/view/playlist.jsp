<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PlayList</title>
    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/css/styleWeb.css">
    <link rel="stylesheet" href="\css\bootstrap.css">
    <link rel="stylesheet" href="\themify-icons\themify-icons.css">
    <link rel="stylesheet" href="\case_study2.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
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
                       aria-label="Search" name="search"><i class="ti-search"></i>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item me-4">
                        <a class="nav-link active text-secondary help" aria-current="page" href="#">Contact</a>
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
<div class="row" style="height: 100%">
    <div class="row ms-0 me-0" style="margin-top: 56px">
        <div class="col-4 py-3" style="background-color: black;height: 100%"><img
                src="https://i.pinimg.com/564x/5e/60/b7/5e60b70cef4cec25b10f6fee314ec92a.jpg"
                style="width: 100% ;height: 100%;"><br>
        </div>

        <div class="col-8" style="background-color: white">
            <section style="width: 8rem;height: 40px;border-radius: 150px;"
                     class="bg-dark mt-3 mb-2 me-3 float-end d-flex align-items-center justify-content-center">
                <div class="circle long">
                    <a class="text-white link-create" href="/playlist?action=create">Add new user</a>
                </div>
            </section>
            <table class="table table-dark table-striped">
                <tr>
                    <td>Stt</td>
                    <td>Name Song</td>
                    <td>Name Singer</td>
                    <td>Name Type</td>
                    <td>Delete</td>
                    <td>Edit</td>
                </tr>
                <c:forEach var="playList" items="${playList}" varStatus="stt">
                    <tr>
                        <td>${stt.count}</td>
                        <td>${playList.nameSong}</td>
                        <td>${playList.singer.singerName}</td>
                        <td>${playList.typeSong.typeName}</td>
                        <td>
                            <button style="background-color: #6c757d; border: none"
                                    onclick="infoDelete('${playList.getPlayListId()}','${playList.getNameSong()}')"
                                    type="button"
                                    class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Delete
                            </button>
                        </td>
                        <td>
                            <button class="btn btn-danger" style="background-color: #6c757d; border: none">
                                <a style="color: white" href="/playlist?action=edit&id=${playList.playListId}">Edit</a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <%-- modal delete--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete Playlist</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/playlist?action=delete" method="post">
                    <div class="modal-body">
                        <label for="deleteId"></label><input type="text" hidden id="deleteId" name="id">
                        Bạn có muốn xóa list nhạc <span id="deleteName" style="color: brown; font-weight: bold"></span>
                        không ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Confirm</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


</div>
</div>
<script>
    function infoDelete(playListId, NameSong) {
        document.getElementById("deleteId").value = playListId;
        document.getElementById("deleteName").innerText = NameSong;
    }
</script>
<script src="webapp\js\bootstrap.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
