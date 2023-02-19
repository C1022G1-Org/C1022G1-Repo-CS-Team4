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
    <form  method="post">
<%--        <table border="1" cellpadding="5">--%>
<%--            <caption>--%>
<%--                <h2>Edit Playlist</h2>--%>
<%--            </caption>--%>
<%--            <tr>--%>
<%--                <td>--%>
<%--                    <input type="hidden" name="id" >--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Name Song:</th>--%>
<%--                <td>--%>
<%--                    <select name="nameSong">--%>
<%--                        <c:forEach items="${playlist}" var="playlist">--%>
<%--                            <option name="nameSong" >${playlist.getNameSong()}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                </td>--%>
<%--            </tr>--%>

<%--            <tr>--%>
<%--                <th>Name Singer:</th>--%>
<%--                <td>--%>
<%--                    <select name="singerId">--%>
<%--                        <c:forEach items="${playlist}" var="playlist">--%>
<%--                            <option name="singerId" value="${playlist.getSinger().getSingerId()}">${playlist.getSinger().getSingerName()}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Name Type:</th>--%>
<%--                <td>--%>
<%--                    <select name="typeId">--%>
<%--                        <c:forEach items="${playlist}" var="playlist">--%>
<%--                            <option name="typeId" value="${playlist.getTypeSong().getTypeId()}">${playlist.getTypeSong().getTypeName()}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan="2" align="center"><input type="submit" value="Save"/></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
    <input type="hidden" name="id" >
    <div class="form-group">
        <label for="nameSong">Tên bài hát</label>
        <input type="text"
               class="form-control" name="nameSong" id="nameSong" value="${playlist.nameSong}">
    </div>
    <div class="form-group">
        <label for="singerId">Tên ca sĩ</label>
        <select name="singerId" id="singerId">
                <option value="${playlist.singer.singerId}">${playlist.singer.singerName}</option>
        </select>
    </div>
    <div class="form-group">
        <label for="typeId">Thể loại bài hát</label>
        <select name="typeId" id="typeId">
            <option value="${playlist.typeSong.typeId}">${playlist.typeSong.typeName}</option>
        </select>
    </div>
    <input type="submit" class="btn btn-primary" value="Xác nhận">
    </form>
</div>
</body>
</html>
