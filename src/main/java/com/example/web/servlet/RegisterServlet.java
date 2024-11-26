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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取用户提交的用户名、账号和密码
        String username = request.getParameter("username");
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        String jdbcURL = Config.getDatabaseURL(); // 数据库URL
        String dbUser = Config.getDatabaseUser(); // 数据库用户名
        String dbPassword = Config.getDatabasePassword(); // 数据库密码

        try {
            // 加载数据库驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 获取数据库连接
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL 插入语句
            String sql = "INSERT INTO users (username, account, password) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, account);
            statement.setString(3, password);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("login.jsp"); // 注册成功后重定向到登录页面
            }

            // 关闭连接
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("注册失败，请重试。");
        }
    }
}
