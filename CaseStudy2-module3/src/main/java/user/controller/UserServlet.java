package user.controller;

import user.model.User;
import user.service.IUserService;
import user.service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {

    IUserService iUserService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        if(action==null){
            action = "";
        }
        switch (action){
            case "register":
                showCreate(request,response);
                break;
            case "logout":
                logout(request,response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        if(action==null){
            action = "";
        }
        switch (action){
            case "register":
                create(request,response);
                break;
            case "login":
                login(request,response);
                break;
            default:
                break;
        }
    }
    private void create(HttpServletRequest request, HttpServletResponse response){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User(name,email,password);
        iUserService.register(user);
        try {
            response.sendRedirect("/view/login.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showCreate(HttpServletRequest request, HttpServletResponse response){
        try {
            request.getRequestDispatcher("/view/register.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response){
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = iUserService.login(email,password);
        if(user==null){
            try {
                response.sendRedirect("/view/login.jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }else {
            try {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("nameAccount",user);
                response.sendRedirect("/view/home.jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
    private void logout(HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();
        session.removeAttribute("nameAccount");
        try {
            response.sendRedirect("/view/home.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
