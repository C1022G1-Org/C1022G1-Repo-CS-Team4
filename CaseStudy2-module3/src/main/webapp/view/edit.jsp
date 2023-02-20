<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<center>
    <h1>Playlist Management</h1>
    <h2>
        <a href="/playlist">List All Playlist</a>
    </h2>
    <p>${mess}</p>
</center>
<div align="center">
    <form method="post">
    <input type="hidden" name="id" >
    <div class="form-group">
        <label for="nameSong">Tên bài hát</label>
        <input type="text"
               class="form-control" name="nameSong" id="nameSong" value="${playlist.nameSong}">
    </div>
    <div class="form-group">
        <label for="singerId">Tên ca sĩ</label>
        <select name="singerId" id="singerId">
            <c:forEach items="${singerList}" var="singerList" varStatus="stt">
                <option value="${singerList.singerId}">${singerList.singerName}</option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label for="typeId">Thể loại bài hát</label>
        <select name="typeId" id="typeId">
            <c:forEach items="${typeSongList}" var="typeSongList" varStatus="stt">
            <option value="${typeSongList.typeId}">${typeSongList.typeName}</option>
            </c:forEach>
        </select>
    </div>
    <input type="submit" class="btn btn-primary" value="Xác nhận">
    </form>
</div>
</body>
</html>
