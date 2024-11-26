package com.example.web.servlet;

import com.example.web.config.Config;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/UpdateUsernameServlet")
public class UpdateUsernameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("newUsername");
        int id = (int) request.getSession().getAttribute("id");

        String jdbcURL = Config.getDatabaseURL(); // 数据库URL
        String dbUser = Config.getDatabaseUser(); // 数据库用户名
        String dbPassword = Config.getDatabasePassword(); // 数据库密码

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "UPDATE users SET username =? WHERE id =?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setInt(2,id);
            int result = preparedStatement.executeUpdate();
            if (result > 0) {
                // 更新Session中的username
                request.getSession().setAttribute("username", username);
            } else {
                response.getWriter().println("修改失败，请重试。");
            }

            preparedStatement.close();
            connection.close();

        }catch (Exception e){
            e.printStackTrace();
            response.getWriter().println("修改失败，请重试。");
        }
    }
}
