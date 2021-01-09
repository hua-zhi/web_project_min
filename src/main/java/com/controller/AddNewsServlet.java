package com.controller;

import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/manage/addNews")
public class AddNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/manage/addNews.jsp")
                .forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newTitle = req.getParameter("title");
        String newContent = req.getParameter("content");
        String newAuthor = req.getParameter("author");
        String sql = "insert into news(author, title, content) values (?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newAuthor);
            st.setString(2,newTitle);
            st.setString(3,newContent);
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath() + "/manage/manage");
    }
}
