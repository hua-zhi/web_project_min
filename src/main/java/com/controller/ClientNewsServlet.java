package com.controller;

import com.entity.News;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/news")
public class ClientNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> news = new ArrayList<>();
        String sql = "select * from news";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()
        ) {
            while (rs.next()){
                News news1 = new News(rs.getInt("id"),rs.getString("title"),rs.getString("content"),rs.getString("author"),rs.getTimestamp("create_time"),rs.getTimestamp("update_time"));
                news.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("news", news);
        req.getRequestDispatcher("/news.jsp")
                .forward(req, resp);
    }
}
