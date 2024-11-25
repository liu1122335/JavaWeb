<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" language="java" %>
<html>
<head>
    <title>欢迎页面</title>
</head>
<body>
<h2>欢迎, ${sessionScope.username}!</h2>
<a href="logout">登出</a>
</body>
</html>
