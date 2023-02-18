package music.controller;

import music.model.PlayList;
import music.model.Singer;
import music.model.TypeSong;
import service.IPlayListService;
import service.impl.PlayListService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PlayListServlet", urlPatterns = "/playlist")
public class PlayListServlet extends HttpServlet {
    IPlayListService iPlayListService = new PlayListService();

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
            case "edit":
                updatePlaylist(request, response);
                break;
        }
    }

    private void updatePlaylist(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameSong = request.getParameter("nameSong");
        int singerId = Integer.parseInt(request.getParameter("singerId"));
        int typeId = Integer.parseInt(request.getParameter("typeId"));
        Singer singer = new Singer(singerId);
        TypeSong typeSong = new TypeSong(typeId);
        PlayList playList = new PlayList(id, nameSong, singer, typeSong);
        boolean flag = iPlayListService.update(playList);
        String mess = "Sửa thành công";
        if (flag) {
            request.setAttribute("mess", mess);
        } else {
            mess = "thất bại";
            request.setAttribute("mess", mess);
        }
        try {
            request.getRequestDispatcher("view/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deletePlaylist(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String mess = "Xóa Không thành công";
        boolean check = iPlayListService.deletePlayList(id);
        if (check) {
            mess = "Xóa Thành công";
        }
        request.setAttribute("mess", mess);
        showList(request, response);
    }

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
            default:
                showList(request, response);
        }
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("playlist", iPlayListService.findAllPlayList());
        try {
            request.getRequestDispatcher("/view/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("playList", iPlayListService.findAllPlayList());
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
        dispatcher.forward(request, response);
    }
}
