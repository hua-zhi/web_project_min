package com.controller;

import com.entity.News;
import com.entity.User;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

@WebServlet("/manage/getNewContent")
public class GetNewContentServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(ManagerServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = null;
        String sql = "select * from news where id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, req.getParameter("nid"));
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setContent(rs.getString("content"));
                    news.setAuthor(rs.getString("author"));
                    news.setCreate_time(rs.getTimestamp("create_time"));
                    news.setUpdate_time(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.setAttribute("news", news);
        req.getRequestDispatcher("/WEB-INF/manage/newsSelect.jsp")
                .forward(req, resp);
    }
}
