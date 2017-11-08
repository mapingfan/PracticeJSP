<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="messagePane.jsp" method="post">
    <label>输入你的名字: </label><input type="text" name="name" required><br>
    <label>留言标题: </label><input type="text" name="title" required><br>
    <label>输入留言</label><br>
    <textarea name="content" cols="50" rows="10" required></textarea>
    <br>
    <input type="submit" value="提交信息">
</form>
<form action="showMessage.jsp" method="post">
    <input type="submit" value="查看留言板">
</form>
</body>
</html>
