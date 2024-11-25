<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<h2>用户登录</h2>
<form action="login" method="post">
    <label>用户名：</label>
    <input type="text" name="username" required><br><br>
    <label>密码：</label>
    <input type="password" name="password" required><br><br>
    <input type="submit" value="登录">
</form>

<c:if test="${not empty errorMessage}">
    <p style="color:red;">${errorMessage}</p>
</c:if>
</body>
</html>
