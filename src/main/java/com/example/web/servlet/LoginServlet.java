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
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loginField = request.getParameter("loginField");
        String password = request.getParameter("password");

        try {
            // 数据库连接信息
            String jdbcURL = Config.getDatabaseURL();
            String dbUser = Config.getDatabaseUser();
            String dbPassword = Config.getDatabasePassword();

            // 加载数据库驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL 查询语句
            String sql = "SELECT * FROM users WHERE (username = ? OR account = ?) AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, loginField);
            statement.setString(2, loginField);
            statement.setString(3, password);

            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                // 登录成功，设置用户状态
                request.getSession().setAttribute("user", loginField); // 将用户名或账号存入会话
                request.getSession().setAttribute("username", resultSet.getString("username"));
                request.getSession().setAttribute("account", resultSet.getString("account"));
                response.sendRedirect("index.jsp"); // 修改为主页面的 URL
            } else {
                // 登录失败，重定向回登录页面
                response.sendRedirect("login.jsp?error=invalid"); // 增加错误信息
            }


            // 关闭连接
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("登录失败，请重试。");
        }
    }
}
