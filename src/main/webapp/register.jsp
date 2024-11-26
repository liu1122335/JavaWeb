<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Microsoft YaHei', Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #9B2A2D;
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s;
        }
        .input-group input:focus {
            border-color: #9B2A2D;
            outline: none;
        }
        .register-button {
            background-color: #9B2A2D;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .register-button:hover {
            background-color: #e6a300;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
        }
        .footer a {
            color: #9B2A2D;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>用户注册</h2>
    <form action="RegisterServlet" method="post"> <!-- 提交到 RegisterServlet -->
        <div class="input-group">
            <input type="text" name="username" placeholder="用户名" required>
        </div>
        <div class="input-group">
            <input type="text" name="account" placeholder="用户账号" required>
        </div>
        <div class="input-group">
            <input type="password" name="password" placeholder="密码" required>
        </div>
        <button type="submit" class="register-button">注册</button>
    </form>
    <div class="footer">
        <p>已有账户? <a href="login.jsp">登录</a></p>
    </div>
</div>

</body>
</html>
