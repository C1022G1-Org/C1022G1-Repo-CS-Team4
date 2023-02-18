<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <form action="/playlist?action=edit" method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Edit Playlist</h2>
            </caption>
            <tr>
                <td>
                    <input type="hidden" name="id" value="${playListId}">
                </td>
            </tr>
            <tr>
                <th>Name Song:</th>
                <td>
                    <select name="song">
                        <c:forEach items="${playlist}" var="playlist">
                            <option value="${playlist.getPlayListId()}">${playlist.getNameSong()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>

            <tr>
                <th>Name Singer:</th>
                <td>
                    <select name="singer">
                        <c:forEach items="${playlist}" var="playlist">
                            <option value="${playlist.getSinger().getSingerId()}">${playlist.getSinger().getSingerName()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Name Type:</th>
                <td>
                    <select name="type">
                        <c:forEach items="${playlist}" var="playlist">
                            <option value="${playlist.getTypeSong().getTypeId()}">${playlist.getTypeSong().getTypeName()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
