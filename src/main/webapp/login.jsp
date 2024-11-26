<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Microsoft YaHei', Arial, sans-serif;
            background-color: #f9f9f9; /* 背景颜色 */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* 视口高度 */
            margin: 0;
        }
        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px; /* 圆角 */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* 阴影效果 */
            width: 300px; /* 宽度 */
            text-align: center;
        }
        h2 {
            margin-bottom: 20px; /* 标题下边距 */
            color: #9B2A2D; /* 主色 */
        }
        .input-group {
            margin-bottom: 15px; /* 输入框下边距 */
        }
        .input-group input {
            width: 100%; /* 输入框宽度 */
            padding: 10px;
            border: 1px solid #ddd; /* 边框颜色 */
            border-radius: 5px; /* 边框圆角 */
            transition: border-color 0.3s; /* 边框颜色变化效果 */
        }
        .input-group input:focus {
            border-color: #9B2A2D; /* 聚焦时边框颜色 */
            outline: none; /* 去掉默认轮廓 */
        }
        .login-button {
            background-color: #9B2A2D; /* 按钮背景色 */
            color: #fff; /* 按钮文字颜色 */
            border: none; /* 去掉边框 */
            padding: 10px 20px; /* 内边距 */
            border-radius: 5px; /* 圆角 */
            cursor: pointer; /* 鼠标指针样式 */
            transition: background-color 0.3s; /* 背景色变化效果 */
        }
        .login-button:hover {
            background-color: #e6a300; /* 悬停效果 */
        }
        .footer {
            text-align: center;
            margin-top: 20px; /* 上边距 */
        }
        .footer a {
            color: #9B2A2D; /* 链接颜色 */
            text-decoration: none; /* 去掉下划线 */
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>用户登录</h2>
    <form action="LoginServlet" method="post"> <!-- 提交到 LoginServlet -->
        <div class="input-group">
            <input type="text" name="loginField" placeholder="用户名或账号" required>
        </div>
        <div class="input-group">
            <input type="password" name="password" placeholder="密码" required>
        </div>
        <button type="submit" class="login-button">登录</button>
    </form>
    <div class="footer">
        <p>没有账户? <a href="register.jsp">注册</a></p> <!-- 链接到注册页面 -->
    </div>
</div>

</body>
</html>
