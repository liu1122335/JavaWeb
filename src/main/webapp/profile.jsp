<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Microsoft YaHei', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9; /* 背景色 */
            display: flex; /* 使用flexbox布局 */
            flex-direction: column; /* 垂直排列 */
            height: 100vh; /* 高度为100% */
        }
        header {
            background: #9B2A2D;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .container {
            display: flex; /* 使用flexbox布局 */
            flex: 1; /* 占用剩余空间 */
            margin: 20px;
        }
        .tab-container {
            flex: 1; /* 占用剩余空间 */
            padding: 10px;
        }
        .tab {
            padding: 10px 20px;
            margin-bottom: 5px;
            cursor: pointer;
            background: #f2b600;
            color: #000;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .tab:hover {
            background: #e6a300; /* 悬停效果 */
        }
        .tab.active {
            background: #9B2A2D;
            color: white; /* 选中状态 */
        }
        .content {
            flex: 3; /* 占用更多空间 */
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-left: 20px; /* 左边距 */
        }
        .content.active {
            display: block; /* 只显示活动内容 */
        }
        .content {
            display: none; /* 隐藏所有内容 */
        }
        footer {
            background: #9B2A2D;
            color: #fff;
            text-align: center;
            padding: 15px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>个人中心</h1>
</header>

<div class="container">
    <!-- 垂直排列的标签 -->
    <div class="tab-container">
        <div class="tab active" onclick="showTab('profileInfo')">个人信息</div>
        <div class="tab" onclick="showTab('history')">历史记录</div>
        <div class="tab" onclick="logout()">登出</div> <!-- 修改为登出功能 -->
    </div>

    <!-- 内容部分 -->
    <div class="content active" id="profileInfo">
        <h2>个人信息</h2>
        <p>用户名: <strong><%= session.getAttribute("username") != null ? session.getAttribute("username") : "未登录" %></strong></p>
        <p>账户: <strong><%= session.getAttribute("account") != null ? session.getAttribute("account") : "未登录" %></strong></p>
        <p>加入时间: <strong>2023-01-01</strong></p>
    </div>

    <div class="content" id="history">
        <h2>历史记录</h2>
        <ul>
            <li>访问过的文化遗产: 长城</li>
            <li>访问过的文化遗产: 故宫</li>
            <li>更多条目...</li>
        </ul>
    </div>
</div>

<footer>
    <p>&copy; 2023 历史文化遗产网站. 保留所有权利.</p>
</footer>

<script>
    // 切换标签的函数
    function showTab(tabName) {
        // 隐藏所有内容
        const contents = document.querySelectorAll('.content');
        contents.forEach(content => {
            content.classList.remove('active');
        });

        // 移除所有标签的活跃状态
        const tabs = document.querySelectorAll('.tab');
        tabs.forEach(tab => {
            tab.classList.remove('active');
        });

        // 显示当前选中的标签内容
        document.getElementById(tabName).classList.add('active');
        // 设置当前标签为活动状态
        document.querySelector(`.tab[onclick="showTab('${tabName}')"]`).classList.add('active');
    }

    // 登出函数
    function logout() {
        // 调用后端逻辑清空 session 或其他登出操作
        window.location.href = 'LogoutServlet'; // 修改为实际的登出处理 Servlet
    }
</script>

</body>
</html>
