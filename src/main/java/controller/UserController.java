package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;
import util.MySQLConnUtils;

@WebServlet({"/user","/user/form","/user/delete"})
public class UserController extends HttpServlet{
	private UserDAO userDAO;

    public void init() {
        Connection conn;

        try {
            conn = MySQLConnUtils.getMySQLConnection();
            userDAO = new UserDAO(conn);
        }catch(ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            insertOrUpdate(request,response);
        }catch(SQLException e){
            e.printStackTrace();
        }catch(IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        String action = request.getServletPath();
        try {
            switch (action) {
                case "/user/form":
                    showForm(request,response);
                    break;
                case  "/user/delete":
                    deleteUser(request,response);
                    break;
                default:
                    listUser(request,response);
                    break;
            }
        }catch( Exception ex) {
            throw new ServletException(ex);
        }
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        try {
            List<User> lstUser = userDAO.lstAllUser();

            request.setAttribute("listUser", lstUser);

            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/userlist.jsp");
            dispatcher.forward(request, response);
        }catch(SQLException e) {
            e.printStackTrace();
        }
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id")== null ? "0" : request.getParameter("id"));

        if(id != 0) {
            User existingUser = userDAO.getById(id);
            request.setAttribute("user", existingUser);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/user/userform.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id"));

        User user = new User(id);
        userDAO.deleteUser(user);
        response.sendRedirect(request.getContextPath() + "/user");
    }

    private void insertOrUpdate(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id")== null ? "0" : request.getParameter("id"));
        String user_name = request.getParameter("user_name");
        String user_password = request.getParameter("user_password");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));

        if(id == 0) {
            User newUser = new User(user_name,user_password, trangthai);
            userDAO.insertUser(newUser);
        }else {
            User user = new User(id,user_name,user_password, trangthai);
            userDAO.updateUser(user);
        }
        response.sendRedirect(request.getContextPath() + "/user");
    }
}
