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
import java.util.logging.Logger;

@WebServlet("/manage/delNews")
public class DelNewsServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(ManagerServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql = "delete from news where id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1,req.getParameter("nid"));
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath() + "/manage/manage");
    }
}
