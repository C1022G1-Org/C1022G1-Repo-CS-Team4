package music.controller;

import music.model.PlayList;
import music.model.Singer;
import music.model.TypeSong;
import music.service.IPlayListService;
import music.service.impl.PlayListService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PlayListServlet", urlPatterns = "/playlist")
public class PlayListServlet extends HttpServlet {
    IPlayListService iPlayListService = new PlayListService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreate(request, response);
                break;
            case "edit":
                showEdit(request, response);
                break;
            case "singerList":
                singerList(request,response);
                break;
            case "typeSongList":
                typeSongList(request,response);
                break;
            default:
                showList(request, response);
                break;
        }
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                create(request, response);
                break;
            case "delete":
                deletePlaylist(request, response);
                break;
            case "edit":
                updatePlaylist(request, response);
                break;
        }
    }

    private void updatePlaylist(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        PlayList playList = iPlayListService.findPlaylistById(id);
        String nameSong = request.getParameter("nameSong");
        int singerId = Integer.parseInt(request.getParameter("singerId"));
        int typeId = Integer.parseInt(request.getParameter("typeId"));
        Singer singer = new Singer(singerId);
        TypeSong typeSong = new TypeSong(typeId);
        playList.setNameSong(nameSong);
        playList.setSinger(singer);
        playList.setTypeSong(typeSong);
        iPlayListService.update(playList);
        try {
            response.sendRedirect("/playlist");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        PlayList playList = iPlayListService.findPlaylistById(id);
        request.setAttribute("playlist", playList);
        request.setAttribute("typeSongList",iPlayListService.showTypeSongList());
        request.setAttribute("singerList",iPlayListService.showSingerList());
        try {
            request.getRequestDispatcher("/view/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deletePlaylist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String mess = "Xóa Không thành công";
        boolean check = iPlayListService.deletePlayList(id);
        if (!check) {
            mess = "Xóa Thành công";
        }
        request.setAttribute("mess", mess);
        List<PlayList> playLists = iPlayListService.findAllPlayList(null);
        request.setAttribute("playList",playLists);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/playlist.jsp");
        dispatcher.forward(request,response);
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        String songName= request.getParameter("search");
        request.setAttribute("playList", iPlayListService.findAllPlayList(songName));
        try {
            request.getRequestDispatcher("/view/playlist.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameSong = request.getParameter("nameSong");
        int singerId = Integer.parseInt(request.getParameter("singerId"));
        int typeId = Integer.parseInt(request.getParameter("typeId"));
        iPlayListService.insertPlaylist(nameSong, singerId, typeId);
        response.sendRedirect("/playlist");
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("typeSongList",iPlayListService.showTypeSongList());
        request.setAttribute("singerList",iPlayListService.showSingerList());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
        dispatcher.forward(request, response);
    }
    private void typeSongList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("typeSongList",iPlayListService.showTypeSongList());
        request.getRequestDispatcher("/view/playlist.jsp").forward(request,response);
    }

    private void singerList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("singerList",iPlayListService.showSingerList());
        request.getRequestDispatcher("/view/playlist.jsp").forward(request,response);
    }

}
